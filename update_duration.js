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
            if (file.endsWith('.html') && !file.includes('old_index.html')) {
                results.push(file);
            }
        }
    });
    return results;
}

const files = walk('c:/Users/Usuario/.gemini/antigravity/playground/nascimento-familiar');

files.forEach(file => {
    let content = fs.readFileSync(file, 'utf8');
    let original = content;
    
    // Duration patterns
    content = content.replace(/Duração: 50 min/g, 'Duração: 1h e 40min');
    content = content.replace(/Duração: 60-90 min/g, 'Duração: 1h e 40min');
    content = content.replace(/Duração: Sob consulta/g, 'Duração: 1h e 40min');
    
    // Explicit durations in cards or lists
    content = content.replace(/>50 minutos</g, '>1h e 40min<');
    content = content.replace(/>60 a 90 minutos</g, '>1h e 40min<');
    content = content.replace(/>60 a 120 minutos</g, '>1h e 40min<');
    
    // Phrases
    content = content.replace(/duram em média 50 minutos/g, 'têm duração média de 1h e 40min');
    
    if (content !== original) {
        fs.writeFileSync(file, content, 'utf8');
        console.log(`Updated globally: ${file}`);
    }
});
