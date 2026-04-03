# Universal Design Synchronization Script
$root = "c:\Users\Usuario\.gemini\antigravity\playground\nascimento-familiar"

# 1. Universal Style Block (Floating Button, FAQ, Design Tokens)
function Get-StyleBlock() {
    return @"
    <style>
        /* FAQ Accordion Styles */
        .faq-container { background: white; border-radius: 1.5rem; border: 1px solid #EAE1D8; padding: 1rem 1.5rem; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.02); }
        .accordion-item { border-bottom: 1px solid #EAE1D8; }
        .accordion-item:last-child { border-bottom: none; }
        .accordion-header { width: 100%; display: flex; justify-content: space-between; align-items: center; background: none; border: none; padding: 1.5rem 0; text-align: left; cursor: pointer; font-size: 1rem; font-weight: 500; color: #483525; transition: all 0.3s; }
        .accordion-header:hover { color: #9C7C5F; }
        .accordion-content { max-height: 0; overflow: hidden; transition: max-height 0.3s ease-out; color: #666; line-height: 1.6; font-size: 0.9375rem; }
        .accordion-item.active .accordion-content { max-height: 400px; padding-bottom: 1.5rem; }
        .accordion-item.active .chevron { transform: rotate(180deg); color: #9C7C5F; }
        .chevron { transition: transform 0.3s; opacity: 0.5; }

        /* Floating Scroll-to-top Button */
        #scroll-top { position: fixed; bottom: 2rem; right: 2rem; width: 48px; height: 48px; background: #483525; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1); cursor: pointer; transition: all 0.3s; z-index: 100; opacity: 0; visibility: hidden; border: none; }
        #scroll-top.show { opacity: 1; visibility: visible; }
        #scroll-top:hover { transform: translateY(-5px); background: #9C7C5F; }
    </style>
"@
}

# 2. Premium Header (Fixed 4rem gap, HEX colors)
function Get-Header($depthPath) {
    return @"
    <!-- Premium Header -->
    <header id="main-header" style="background-color: #FFFFFF !important; border-bottom: 1px solid #EAE1D8 !important; transition: all 0.3s ease; position: sticky; top: 0; z-index: 1000;">
        <nav class="container-custom" style="padding: 0.75rem 2rem;">
            <div style="display: flex; align-items: center; width: 100%; gap: 4rem;">
                <a href="$depthPath" style="flex-shrink: 0; font-size: 1.25rem; text-decoration: none; font-family: 'Playfair Display', serif; font-weight: 700; color: #483525 !important;">
                    <span style="color: #483525 !important;">Instituto</span>
                    <span style="color: #9C7C5F !important;">Ana Cândida</span>
                </a>
                <div class="hidden lg:flex items-center" style="gap: 1.75rem; display: flex;">
                    <a href="${depthPath}o-instituto" style="font-size: 0.9rem; font-weight: 500; color: #483525 !important; text-decoration: none; font-family: 'Montserrat', sans-serif;">O Instituto</a>
                    <a href="${depthPath}terapia-sistemica" style="font-size: 0.9rem; font-weight: 500; color: #483525 !important; text-decoration: none; font-family: 'Montserrat', sans-serif;">Terapia Sistêmica</a>
                    <a href="${depthPath}atendimentos" style="font-size: 0.9rem; font-weight: 500; color: #483525 !important; text-decoration: none; font-family: 'Montserrat', sans-serif;">Atendimentos</a>
                    <a href="${depthPath}equipe" style="font-size: 0.9rem; font-weight: 500; color: #483525 !important; text-decoration: none; font-family: 'Montserrat', sans-serif;">Equipe</a>
                    <a href="${depthPath}galeria" style="font-size: 0.9rem; font-weight: 500; color: #483525 !important; text-decoration: none; font-family: 'Montserrat', sans-serif;">Galeria</a>
                    <a href="${depthPath}conteudos" style="font-size: 0.9rem; font-weight: 500; color: #483525 !important; text-decoration: none; font-family: 'Montserrat', sans-serif;">Conteúdos</a>
                    <a href="${depthPath}contato" style="font-size: 0.9rem; font-weight: 500; color: #483525 !important; text-decoration: none; font-family: 'Montserrat', sans-serif;">Contato</a>
                </div>
                <div class="hidden lg:block" style="margin-left: auto;">
                    <a href="https://wa.me/5562981838006" target="_blank" style="background-color: #483525 !important; color: #FDFBFA !important; padding: 0.5rem 1.25rem; border-radius: 9999px; text-decoration: none; font-size: 0.85rem; font-weight: 600; font-family: 'Montserrat', sans-serif;">Agendar</a>
                </div>
                <button class="lg:hidden" style="margin-left: auto; background: none; border: none; cursor: pointer; color: #483525 !important;" onclick="toggleMobileMenu()">
                    <i data-lucide="menu"></i>
                </button>
            </div>
        </nav>
    </header>

    <!-- Mobile Menu Overlay -->
    <div id="mobile-menu" class="hidden" style="position: fixed; inset: 0; background: white; z-index: 2000; padding: 2rem; display: none; flex-direction: column;">
        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
            <a href="$depthPath" style="font-size: 1.25rem; text-decoration: none; font-family: 'Playfair Display', serif; font-weight: 700; color: #483525;">
                <span>Instituto</span>
                <span style="color: #9C7C5F;">Ana Cândida</span>
            </a>
            <button style="background: none; border: none; cursor: pointer; color: #483525;" onclick="toggleMobileMenu()">
                <i data-lucide="x"></i>
            </button>
        </div>
        <div style="display: flex; flex-direction: column; gap: 1.5rem;">
            <a href="${depthPath}o-instituto" style="text-decoration: none; color: #483525; font-size: 1.1rem; font-weight: 500;">O Instituto</a>
            <a href="${depthPath}terapia-sistemica" style="text-decoration: none; color: #483525; font-size: 1.1rem; font-weight: 500;">Terapia Sistêmica</a>
            <a href="${depthPath}atendimentos" style="text-decoration: none; color: #483525; font-size: 1.1rem; font-weight: 500;">Atendimentos</a>
            <a href="${depthPath}equipe" style="text-decoration: none; color: #483525; font-size: 1.1rem; font-weight: 500;">Equipe</a>
            <a href="${depthPath}galeria" style="text-decoration: none; color: #483525; font-size: 1.1rem; font-weight: 500;">Galeria</a>
            <a href="${depthPath}conteudos" style="text-decoration: none; color: #483525; font-size: 1.1rem; font-weight: 500;">Conteúdos</a>
            <a href="${depthPath}contato" style="text-decoration: none; color: #483525; font-size: 1.1rem; font-weight: 500;">Contato</a>
            <a href="https://wa.me/5562981838006" target="_blank" style="background-color: #483525; color: white; padding: 1rem; border-radius: 0.75rem; text-align: center; text-decoration: none; font-weight: 600; margin-top: 1rem;">Agendar Agora</a>
        </div>
    </div>
"@
}

# 3. Premium Footer (Fixed 5 columns, HEX colors)
function Get-Footer($depthPath) {
    return @"
    <!-- Premium Footer -->
    <footer style="background-color: #483525 !important; color: #FDFBFA !important; padding: 5rem 0 3rem; position: relative; z-index: 50; width: 100%;">
        <div style="max-width: 1100px; margin: 0 auto; padding: 0 2rem;">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 3rem; margin-bottom: 4rem;">
                <div>
                    <h3 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Instituto Ana Cândida</h3>
                    <p style="opacity: 0.9; line-height: 1.6; margin-bottom: 2rem; font-size: 0.95rem; color: #FDFBFA !important;">Cuidado relacional com base na Terapia Sistêmica. Acolhimento, ética e ciência para casais e famílias.</p>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Institucional</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}o-instituto" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Sobre nós</a></li>
                        <li><a href="${depthPath}equipe" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Equipe</a></li>
                        <li><a href="${depthPath}atendimentos" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Serviços</a></li>
                        <li><a href="${depthPath}conteudos" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Blog</a></li>
                    </ul>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Contato</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 1.2rem;">
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA !important;"><i data-lucide="map-pin" size="18"></i><span>Village, Goiânia-GO</span></li>
                        <li style="display: flex; align-items: center; gap: 0.75rem; color: #FDFBFA !important;"><i data-lucide="phone" size="18"></i><span>(62) 98183-8006</span></li>
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA !important;"><i data-lucide="mail" size="18"></i><span style="word-break: break-all;">contato@institutoanacandida.com.br</span></li>
                    </ul>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Legal</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}privacidade" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Privacidade (LGPD)</a></li>
                        <li><a href="${depthPath}termos" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Termos de Uso</a></li>
                    </ul>
                </div>
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Aviso Importante</h4>
                    <p style="opacity: 0.9; line-height: 1.6; font-size: 0.9rem; color: #FDFBFA !important;">Este site não oferece atendimento de emergência. Em caso de crise, procure o hospital mais próximo ou ligue 188 (CVV).</p>
                </div>
            </div>
            <div style="border-top: 1px solid rgba(253, 251, 250, 0.1); padding-top: 2rem; text-align: center;">
                <p style="opacity: 0.7; font-size: 0.875rem; color: #FDFBFA !important;">&copy; 2026 Instituto Ana Cândida. Todos os direitos reservados.</p>
            </div>
        </div>
    </footer>
"@
}

# 4. Floating Button HTML
function Get-FloatingButton() {
    return @"
    <button id="scroll-top" title="Voltar ao topo">
        <i data-lucide="chevron-up"></i>
    </button>
"@
}

# Classification
$lvl0 = @("index.html")
$lvl1 = @("agendar/index.html", "atendimentos/index.html", "contato/index.html", "conteudos/index.html", "equipe/index.html", "galeria/index.html", "o-instituto/index.html", "terapia-sistemica/index.html", "upsell/index.html", "downsell/index.html", "jornada/index.html", "obrigado/index.html", "renascimento/index.html")
$lvl2 = @("atendimentos/terapia-individual/index.html", "atendimentos/terapia-casal/index.html", "atendimentos/terapia-familiar/index.html", "atendimentos/parentalidade/index.html")

function Process-File($f, $depthPath) {
    $path = Join-Path $root $f
    if (Test-Path $path) {
        Write-Host "Syncing Design: $f"
        $content = Get-Content $path -Raw
        
        # Style Block
        $style = Get-StyleBlock
        if ($content -notmatch "scroll-top") {
            $content = $content -replace "</head>", "`n$style`n</head>"
        } else {
            $content = $content -replace '(?s)<style>.*?scroll-top.*?</style>', $style
        }

        # Components
        $header = Get-Header $depthPath
        $footer = Get-Footer $depthPath
        $fab = Get-FloatingButton
        
        # Strict Replacements
        $content = $content -replace '(?s)<!-- Premium Header -->.*?<main>', "$header`n    <main>"
        $content = $content -replace '(?s)<header.*?>.*?</header>', $header
        $content = $content -replace '(?s)<!-- Premium Footer -->.*?</footer>', "$footer`n    $fab"
        $content = $content -replace '(?s)<footer.*?>.*?</footer>', "$footer`n    $fab"
        
        # Lucide Script Update
        $s = @"
    <script src="https://unpkg.com/lucide@latest"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => { lucide.createIcons(); });
        function toggleMobileMenu() { const m = document.getElementById('mobile-menu'); m.style.display = m.style.display === 'flex' ? 'none' : 'flex'; }
        window.addEventListener('scroll', () => { const b = document.getElementById('scroll-top'); if(window.scrollY > 500) b.classList.add('show'); else b.classList.remove('show'); });
        document.getElementById('scroll-top')?.addEventListener('click', () => window.scrollTo({top: 0, behavior: 'smooth'}));
    </script>
"@
        $content = $content -replace '(?s)<script src="https://unpkg.com/lucide@latest"></script>.*?<script>.*?</script>', $s
        
        Set-Content $path $content
    }
}

foreach ($f in $lvl0) { Process-File $f "./" }
foreach ($f in $lvl1) { Process-File $f "../" }
foreach ($f in $lvl2) { Process-File $f "../../" }

Write-Host "Universal Design Synchronization Complete!"
