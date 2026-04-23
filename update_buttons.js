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
    { from: /Agendar Sessão/g, to: 'Agendar Atendimento' },
    { from: /Agendar Consulta/g, to: 'Agendar Atendimento' }
];

files.forEach(file => {
    let content = fs.readFileSync(file, 'utf8');
    let original = content;
    
    replacements.forEach(r => {
        content = content.replace(r.from, r.to);
    });
    
    if (content !== original) {
        fs.writeFileSync(file, content, 'utf8');
        console.log(`Updated button text: ${file}`);
    }
});
