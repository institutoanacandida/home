# Dynamic Script (Robust Version) to fix headers and footers globally
$root = "c:\Users\Usuario\.gemini\antigravity\playground\nascimento-familiar"

# Standard Header Template (Compact Design)
function Get-Header($depthPath) {
    return @"
    <!-- Premium Header -->
    <header id="main-header" style="background-color: white; border-bottom: 1px solid var(--brand-100); transition: all 0.3s ease;">
        <nav class="container-custom" style="padding: 0.75rem 2rem;">
            <div style="display: flex; align-items: center; width: 100%; gap: 3rem;">
                <a href="$depthPath" class="logo-link" style="flex-shrink: 0; font-size: 1.25rem;">
                    <span style="color: var(--brand-900);">Instituto</span>
                    <span style="color: var(--brand-500);">Ana Cândida</span>
                </a>
                <div class="hidden lg:flex items-center" style="gap: 1.75rem;">
                    <div class="nav-item">
                        <a href="${depthPath}o-instituto" class="nav-link" style="font-size: 0.9rem; font-weight: 500;">O Instituto <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i></a>
                        <div class="dropdown-menu">
                            <a href="${depthPath}o-instituto" class="dropdown-item">Sobre Nós</a>
                            <a href="${depthPath}o-instituto#missao" class="dropdown-item">Missão e Valores</a>
                            <a href="${depthPath}o-instituto#trabalho" class="dropdown-item">Como Trabalhamos</a>
                        </div>
                    </div>
                    <div class="nav-item">
                        <a href="${depthPath}terapia-sistemica" class="nav-link" style="font-size: 0.9rem; font-weight: 500;">Terapia Sistêmica <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i></a>
                        <div class="dropdown-menu">
                            <a href="${depthPath}terapia-sistemica" class="dropdown-item">O que é</a>
                            <a href="${depthPath}terapia-sistemica#para-quem" class="dropdown-item">Para quem é</a>
                        </div>
                    </div>
                    <div class="nav-item">
                        <a href="${depthPath}atendimentos" class="nav-link" style="font-size: 0.9rem; font-weight: 500;">Atendimentos <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i></a>
                        <div class="dropdown-menu">
                            <a href="${depthPath}atendimentos#individual" class="dropdown-item">Terapia Individual</a>
                            <a href="${depthPath}atendimentos#casal" class="dropdown-item">Terapia de Casal</a>
                        </div>
                    </div>
                    <a href="${depthPath}equipe" class="nav-link" style="font-size: 0.9rem; font-weight: 500;">Equipe</a>
                    <a href="${depthPath}galeria" class="nav-link" style="font-size: 0.9rem; font-weight: 500;">Galeria</a>
                    <a href="${depthPath}conteudos" class="nav-link" style="font-size: 0.9rem; font-weight: 500;">Conteúdos</a>
                    <a href="${depthPath}contato" class="nav-link" style="font-size: 0.9rem; font-weight: 500;">Contato</a>
                </div>
                <div class="hidden lg:block" style="margin-left: auto;">
                    <a href="https://wa.me/5562981838006" target="_blank" class="btn btn-primary btn-sm" style="padding: 0.5rem 1.25rem; font-size: 0.85rem;">Agendar</a>
                </div>
                <button class="lg:hidden" style="margin-left: auto; background: none; border: none; cursor: pointer; color: var(--brand-900);" onclick="toggleMobileMenu()">
                    <i data-lucide="menu"></i>
                </button>
            </div>
        </nav>
    </header>
    <div id="mobile-menu" class="hidden">
        <div class="flex justify-between items-center" style="margin-bottom: 2rem;">
            <a href="$depthPath" class="logo-link"><span>Instituto</span><span style="color: var(--brand-500);">Ana Cândida</span></a>
            <button style="background: none; border: none; cursor: pointer;" onclick="toggleMobileMenu()"><i data-lucide="x"></i></button>
        </div>
        <div class="flex flex-col">
            <a href="${depthPath}o-instituto" class="mobile-nav-link">O Instituto</a>
            <a href="${depthPath}terapia-sistemica" class="mobile-nav-link">Terapia Sistêmica</a>
            <a href="${depthPath}atendimentos" class="mobile-nav-link">Atendimentos</a>
            <a href="${depthPath}equipe" class="mobile-nav-link">Equipe</a>
            <a href="${depthPath}galeria" class="mobile-nav-link">Galeria</a>
            <a href="${depthPath}conteudos" class="mobile-nav-link">Conteúdos</a>
            <a href="${depthPath}contato" class="mobile-nav-link">Contato</a>
            <a href="https://wa.me/5562981838006" target="_blank" class="btn btn-primary" style="margin-top: 1.5rem; width: 100%; justify-content: center;">Agendar Agora</a>
        </div>
    </div>
"@
}

# Standard Footer Template (5-Column Original Model with SVG Icons)
function Get-Footer($depthPath) {
    return @"
    <footer style="background-color: var(--brand-900); color: #FDFBFA; padding: 5rem 0 3rem; position: relative; z-index: 50;">
        <div class="container-custom">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 3rem; margin-bottom: 4rem;">
                <div>
                    <h3 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Instituto Ana Cândida</h3>
                    <p style="opacity: 0.9; line-height: 1.6; margin-bottom: 2rem; font-size: 0.95rem; color: #FDFBFA;">Cuidado relacional com base na Terapia Sistêmica. Acolhimento, ética e ciência para casais e famílias.</p>
                    <div style="display: flex; gap: 1.5rem; align-items: center;">
                        <a href="https://instagram.com/institutoanacandida" target="_blank" style="color: #FDFBFA; text-decoration: none;"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg></a>
                        <a href="https://linkedin.com" target="_blank" style="color: #FDFBFA; text-decoration: none;"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path><rect x="2" y="9" width="4" height="12"></rect><circle cx="4" cy="4" r="2"></circle></svg></a>
                    </div>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Institucional</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}o-instituto" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Sobre nós</a></li>
                        <li><a href="${depthPath}equipe" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Equipe</a></li>
                        <li><a href="${depthPath}atendimentos" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Serviços</a></li>
                        <li><a href="${depthPath}conteudos" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Blog</a></li>
                    </ul>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Contato</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 1.2rem;">
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA;"><i data-lucide="map-pin" size="18"></i><span>Village, Goiânia-GO</span></li>
                        <li style="display: flex; align-items: center; gap: 0.75rem; color: #FDFBFA;"><i data-lucide="phone" size="18"></i><span>(62) 98183-8006</span></li>
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA;"><i data-lucide="mail" size="18"></i><span style="word-break: break-all;">contato@institutoanacandida.com.br</span></li>
                    </ul>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Legal</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}privacidade" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Privacidade (LGPD)</a></li>
                        <li><a href="${depthPath}termos" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Termos de Uso</a></li>
                    </ul>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Aviso Importante</h4>
                    <p style="opacity: 0.9; line-height: 1.6; font-size: 0.9rem; color: #FDFBFA;">Este site não oferece atendimento de emergência. Em caso de crise, procure o hospital mais próximo ou ligue 188 (CVV).</p>
                </div>
            </div>
            <div style="border-top: 1px solid rgba(253, 251, 250, 0.1); padding-top: 2rem;">
                <p style="opacity: 0.7; font-size: 0.875rem; color: #FDFBFA;">&copy; 2026 Instituto Ana Cândida. Todos os direitos reservados.</p>
            </div>
        </div>
    </footer>
"@
}

$scriptBlock = @"
    <script src="https://unpkg.com/lucide@latest"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            lucide.createIcons();
        });
        function toggleMobileMenu() {
            const menu = document.getElementById('mobile-menu');
            menu.classList.toggle('hidden');
        }
        window.addEventListener('scroll', () => {
            const header = document.getElementById('main-header');
            if (header && window.scrollY > 20) { header.classList.add('scrolled'); } 
            else if (header) { header.classList.remove('scrolled'); }
        });
    </script>
"@

$allFiles = Get-ChildItem -Path $root -Recurse -Filter index.html | Where-Object { $_.FullName -notmatch "\\.git\\" }

foreach ($f in $allFiles) {
    Write-Host "Updating: $($f.FullName)"
    $content = Get-Content $f.FullName -Raw
    
    # Simple depth calculation
    $rel = $f.FullName.Replace($root, "").Replace("/", "\").TrimStart("\")
    $levels = ($rel -split "\\").Count - 1
    
    $depthPath = "./"
    if ($levels -gt 0) { $depthPath = "../" * $levels }

    $headerT = Get-Header $depthPath
    $footerT = Get-Footer $depthPath
    
    # Replacement with fallback
    if ($content -match '(?s)<!-- Premium Header -->.*?<main>') {
        $content = $content -replace '(?s)<!-- Premium Header -->.*?<main>', "$headerT`n    <main>"
    } else {
        $content = $content -replace '(?s)<header.*?>.*?</header>', $headerT
    }

    if ($content -match '(?s)<!-- Premium Footer -->.*?</footer>') {
        $content = $content -replace '(?s)<!-- Premium Footer -->.*?</footer>', $footerT
    } else {
        $content = $content -replace '(?s)<footer.*?>.*?</footer>', $footerT
    }
    
    $content = $content -replace '(?s)<div id="mobile-menu".*?>.*?</div>', ""
    $content = $content -replace '(?s)<script src="https://unpkg.com/lucide@latest"></script>.*?<script>.*?</script>', $scriptBlock
    
    Set-Content $f.FullName $content
}
Write-Host "Site-wide update complete!"
