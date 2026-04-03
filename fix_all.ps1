# Dynamic Script (Fail-safe Version with HEX Colors)
$root = "c:\Users\Usuario\.gemini\antigravity\playground\nascimento-familiar"

# Standard Header Template (Compact Design with EXPLICIT COLORS)
function Get-Header($depthPath) {
    return @"
    <!-- Premium Header -->
    <header id="main-header" style="background-color: #FFFFFF; border-bottom: 1px solid #EAE1D8; transition: all 0.3s ease; position: sticky; top: 0; z-index: 1000;">
        <nav class="container-custom" style="padding: 0.75rem 2rem;">
            <div style="display: flex; align-items: center; width: 100%; gap: 3rem;">
                <!-- Logo -->
                <a href="$depthPath" class="logo-link" style="flex-shrink: 0; font-size: 1.25rem; text-decoration: none; font-family: 'Playfair Display', serif; font-weight: 700;">
                    <span style="color: #483525;">Instituto</span>
                    <span style="color: #9C7C5F;">Ana Cândida</span>
                </a>

                <!-- Desktop Navigation Items -->
                <div class="hidden lg:flex items-center" style="gap: 1.75rem;">
                    <div class="nav-item">
                        <a href="${depthPath}o-instituto" class="nav-link" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none;">
                            O Instituto
                            <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i>
                        </a>
                        <div class="dropdown-menu">
                            <a href="${depthPath}o-instituto" class="dropdown-item" style="color: #483525; text-decoration: none; display: block; padding: 0.5rem 1rem;">Sobre Nós</a>
                            <a href="${depthPath}o-instituto#missao" class="dropdown-item" style="color: #483525; text-decoration: none; display: block; padding: 0.5rem 1rem;">Missão e Valores</a>
                        </div>
                    </div>

                    <div class="nav-item">
                        <a href="${depthPath}terapia-sistemica" class="nav-link" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none;">
                            Terapia Sistêmica
                            <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i>
                        </a>
                    </div>

                    <div class="nav-item">
                        <a href="${depthPath}atendimentos" class="nav-link" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none;">
                            Atendimentos
                            <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i>
                        </a>
                    </div>

                    <a href="${depthPath}equipe" class="nav-link" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none;">Equipe</a>
                    <a href="${depthPath}galeria" class="nav-link" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none;">Galeria</a>
                    <a href="${depthPath}conteudos" class="nav-link" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none;">Conteúdos</a>
                    <a href="${depthPath}contato" class="nav-link" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none;">Contato</a>
                </div>

                <!-- Agendar Button -->
                <div class="hidden lg:block" style="margin-left: auto;">
                    <a href="https://wa.me/5562981838006" target="_blank" style="background-color: #483525; color: #FDFBFA; padding: 0.5rem 1.25rem; border-radius: 9999px; text-decoration: none; font-size: 0.85rem; font-weight: 600;">Agendar</a>
                </div>

                <!-- Mobile Menu Button -->
                <button class="lg:hidden" style="margin-left: auto; background: none; border: none; cursor: pointer; color: #483525;" onclick="toggleMobileMenu()">
                    <i data-lucide="menu"></i>
                </button>
            </div>
        </nav>
    </header>

    <!-- Mobile Menu Overlay -->
    <div id="mobile-menu" class="hidden" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: #FFFFFF; z-index: 2000; padding: 2rem;">
        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
            <a href="$depthPath" class="logo-link" style="text-decoration: none; font-family: 'Playfair Display', serif; font-weight: 700;">
                <span style="color: #483525;">Instituto</span>
                <span style="color: #9C7C5F;">Ana Cândida</span>
            </a>
            <button style="background: none; border: none; cursor: pointer; color: #483525;" onclick="toggleMobileMenu()">
                <i data-lucide="x"></i>
            </button>
        </div>
        <div style="display: flex; flex-direction: column; gap: 1.5rem;">
            <a href="${depthPath}o-instituto" style="color: #483525; text-decoration: none; font-size: 1.1rem;">O Instituto</a>
            <a href="${depthPath}terapia-sistemica" style="color: #483525; text-decoration: none; font-size: 1.1rem;">Terapia Sistêmica</a>
            <a href="${depthPath}atendimentos" style="color: #483525; text-decoration: none; font-size: 1.1rem;">Atendimentos</a>
            <a href="${depthPath}equipe" style="color: #483525; text-decoration: none; font-size: 1.1rem;">Equipe</a>
            <a href="${depthPath}galeria" style="color: #483525; text-decoration: none; font-size: 1.1rem;">Galeria</a>
            <a href="${depthPath}conteudos" style="color: #483525; text-decoration: none; font-size: 1.1rem;">Conteúdos</a>
            <a href="${depthPath}contato" style="color: #483525; text-decoration: none; font-size: 1.1rem;">Contato</a>
            <a href="https://wa.me/5562981838006" target="_blank" style="background-color: #483525; color: #FDFBFA; padding: 1rem; border-radius: 9999px; text-decoration: none; text-align: center; font-weight: 600; margin-top: 1rem;">Agendar Agora</a>
        </div>
    </div>
"@
}

# Standard Footer Template (5-Column with EXPLICIT HEX COLORS #483525)
function Get-Footer($depthPath) {
    return @"
    <!-- Premium Footer -->
    <footer style="background-color: #483525; color: #FDFBFA; padding: 5rem 0 3rem; position: relative; z-index: 50;">
        <div class="container-custom">
            <!-- Footer Grid -->
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 3rem; margin-bottom: 4rem;">
                
                <!-- Col 1: Brand & Social -->
                <div>
                    <h3 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Instituto Ana Cândida</h3>
                    <p style="opacity: 0.9; line-height: 1.6; margin-bottom: 2rem; font-size: 0.95rem; color: #FDFBFA;">
                        Cuidado relacional com base na Terapia Sistêmica. Acolhimento, ética e ciência para casais e famílias.
                    </p>
                    <div style="display: flex; gap: 1.5rem; align-items: center;">
                        <a href="https://instagram.com/institutoanacandida" target="_blank" style="color: #FDFBFA; text-decoration: none; opacity: 1;" aria-label="Instagram">
                            <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>
                        </a>
                        <a href="https://linkedin.com" target="_blank" style="color: #FDFBFA; text-decoration: none; opacity: 1;" aria-label="LinkedIn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path><rect x="2" y="9" width="4" height="12"></rect><circle cx="4" cy="4" r="2"></circle></svg>
                        </a>
                    </div>
                </div>

                <!-- Col 2: Institucional -->
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Institucional</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}o-instituto" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Sobre nós</a></li>
                        <li><a href="${depthPath}equipe" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Equipe</a></li>
                        <li><a href="${depthPath}atendimentos" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Serviços</a></li>
                        <li><a href="${depthPath}conteudos" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Blog</a></li>
                    </ul>
                </div>

                <!-- Col 3: Contato -->
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Contato</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 1.2rem;">
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA; opacity: 0.9;">
                            <i data-lucide="map-pin" size="18" style="flex-shrink: 0; margin-top: 0.2rem;"></i>
                            <span>Village, Goiânia-GO</span>
                        </li>
                        <li style="display: flex; align-items: center; gap: 0.75rem; color: #FDFBFA; opacity: 0.9;">
                            <i data-lucide="phone" size="18" style="flex-shrink: 0;"></i>
                            <span>(62) 98183-8006</span>
                        </li>
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA; opacity: 0.9;">
                            <i data-lucide="mail" size="18" style="flex-shrink: 0; margin-top: 0.2rem;"></i>
                            <span style="word-break: break-all;">contato@institutoanacandida.com.br</span>
                        </li>
                    </ul>
                </div>

                <!-- Col 4: Legal -->
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Legal</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}privacidade" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Privacidade (LGPD)</a></li>
                        <li><a href="${depthPath}termos" style="color: #FDFBFA; text-decoration: none; opacity: 0.8;">Termos de Uso</a></li>
                    </ul>
                </div>

                <!-- Col 5: Aviso Importante -->
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA;">Aviso Importante</h4>
                    <p style="opacity: 0.9; line-height: 1.6; font-size: 0.9rem; color: #FDFBFA;">
                        Este site não oferece atendimento de emergência. Em caso de crise, procure o hospital mais próximo ou ligue 188 (CVV).
                    </p>
                </div>
            </div>

            <!-- Separator Line -->
            <div style="border-top: 1px solid rgba(253, 251, 250, 0.1); padding-top: 2rem;">
                <p style="opacity: 0.7; font-size: 0.875rem; color: #FDFBFA;">
                    &copy; 2026 Instituto Ana Cândida. Todos os direitos reservados.
                </p>
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
            if (menu) menu.classList.toggle('hidden');
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
    Write-Host "Updating visiblity for: $($f.FullName)"
    $content = Get-Content $f.FullName -Raw
    
    # Depth calculation
    $rel = $f.FullName.Replace($root, "").Replace("/", "\").TrimStart("\")
    $levels = ($rel -split "\\").Count - 1
    $depthPath = "./"
    if ($levels -gt 1) { $depthPath = "../" * ($levels - 1) }
    elseif ($levels -eq 1) { $depthPath = "../" }

    $headerT = Get-Header $depthPath
    $footerT = Get-Footer $depthPath
    
    # Replacement
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
Write-Host "Universal Visibility Update Complete!"
