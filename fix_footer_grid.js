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

// New footer grid configuration
const oldGrid = ".footer-grid { grid-template-columns: 0.8fr 0.6fr 1.5fr 2fr 2.4fr; gap: 2rem; }";
const newGrid = ".footer-grid { grid-template-columns: 2fr 1.2fr 1.5fr 1.2fr 2.4fr; gap: 3rem; }";

const oldGrid2 = "grid-template-columns: 0.8fr 0.6fr 1.5fr 2fr 2.4fr; gap: 2rem;";
const newGrid2 = "grid-template-columns: 2fr 1.2fr 1.5fr 1.2fr 2.4fr; gap: 3.5rem;";

files.forEach(file => {
    let content = fs.readFileSync(file, 'utf8');
    let original = content;
    
    content = content.replace(oldGrid, newGrid);
    content = content.replace(oldGrid2, newGrid2);
    
    if (content !== original) {
        fs.writeFileSync(file, content, 'utf8');
        console.log(`Updated footer alignment: ${file}`);
    } else {
        // If it didn't match the exact string, try a more flexible approach for lines 53-54
        const flexRegex = /grid-template-columns:\s*0\.8fr\s*0\.6fr\s*1\.5fr\s*2fr\s*2\.4fr;\s*gap:\s*2rem;/g;
        content = content.replace(flexRegex, newGrid2);
        if (content !== original) {
            fs.writeFileSync(file, content, 'utf8');
            console.log(`Updated footer alignment (regex): ${file}`);
        }
    }
});
