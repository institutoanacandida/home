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

const newText = "Cuidado relacional focado no florescer feminino, empresas e famílias. Acolhimento, ética e ciência para uma vida com mais equilíbrio.";

// Regex to catch both literal and encoded versions
const footerRegex = /Cuidado relacional (com base na Terapia Sist(ê|&ecirc;)mica|focado no florescer feminino, empresas e fam(í|&iacute;)lias)\. Acolhimento, (é|&eacute;)tica e ci(ê|&ecirc;)ncia para (empresas|casais) e fam(í|&iacute;)lias\./g;

files.forEach(file => {
    let content = fs.readFileSync(file, 'utf8');
    let original = content;
    
    content = content.replace(footerRegex, newText);
    
    if (content !== original) {
        fs.writeFileSync(file, content, 'utf8');
        console.log(`Updated footer: ${file}`);
    }
});
