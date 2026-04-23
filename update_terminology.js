const fs = require('fs');
const path = require('path');

function walk(dir) {
    let results = [];
    const list = fs.readdirSync(dir);
    list.forEach(file => {
        file = path.resolve(dir, file);
        const stat = fs.statSync(file);
        if (stat && stat.isDirectory()) {
            results = results.concat(walk(file));
        } else {
            if (file.endsWith('.html')) {
                results.push(file);
            }
        }
    });
    return results;
}

const files = walk('c:/Users/Usuario/.gemini/antigravity/playground/nascimento-familiar');

const replacements = [
    { from: /paciente/g, to: 'cliente' },
    { from: /Paciente/g, to: 'Cliente' },
    { from: /pacientes/g, to: 'clientes' }, // redundant due to /paciente/g but safer
    { from: /Pacientes/g, to: 'Clientes' }
];

files.forEach(file => {
    let content = fs.readFileSync(file, 'utf8');
    let original = content;
    
    // Specifically target the "Foco na autonomia" if needed, but global is likely what they want
    replacements.forEach(r => {
        content = content.replace(r.from, r.to);
    });
    
    if (content !== original) {
        fs.writeFileSync(file, content, 'utf8');
        console.log(`Updated terminology: ${file}`);
    }
});
