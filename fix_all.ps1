# Universal Design Synchronization Script
$root = "c:\Users\Usuario\.gemini\antigravity\playground\nascimento-familiar"

# 1. Universal Style Block (Dropdowns Fixed, SVGs, FAQ, Floating Button)
function Get-StyleBlock {
    return @"
    <style>
        :root {
            --brand-900: #483525;
            --brand-800: #5D4632;
            --brand-500: #9C7C5F;
            --brand-100: #EAE1D8;
            --brand-50: #FDFBFA;
        }

        /* Fixed Interactive Dropdowns */
        .nav-item-dropdown { position: relative; padding: 1rem 0; cursor: pointer; }
        .nav-link-main { display: flex; align-items: center; gap: 0.4rem; font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none; font-family: 'Montserrat', sans-serif; }
        .dropdown-menu { 
            position: absolute; top: 100%; left: 50%; transform: translateX(-50%) translateY(10px);
            min-width: 260px; background: white; border: 1px solid var(--brand-100); 
            border-radius: 1rem; box-shadow: 0 20px 25px -5px rgba(0,0,0,0.1);
            opacity: 0; visibility: hidden; transition: all 0.25s ease; z-index: 9999; padding: 0.75rem 0;
            pointer-events: none;
        }
        /* Hover Area Bridge to prevent closing */
        .nav-item-dropdown::after { content: ''; position: absolute; top: 80%; left: 0; width: 100%; height: 25px; }
        .nav-item-dropdown:hover .dropdown-menu { opacity: 1; visibility: visible; transform: translateX(-50%) translateY(0); pointer-events: auto; }
        
        .dropdown-item { 
            display: block; padding: 0.75rem 1.5rem; font-size: 0.875rem; color: var(--brand-900); 
            text-decoration: none; transition: all 0.2s; font-family: 'Montserrat', sans-serif; font-weight: 500;
        }
        .dropdown-item:hover { background: var(--brand-50); color: var(--brand-500); padding-left: 1.75rem; }
        .chevron-icon { width: 14px; height: 14px; opacity: 0.5; transition: transform 0.3s; }
        .nav-item-dropdown:hover .chevron-icon { transform: rotate(180deg); opacity: 1; color: var(--brand-500); }

        /* Forced 5-Column Footer Grid */
        .footer-grid { 
            display: grid; grid-template-columns: repeat(2, 1fr); gap: 2rem; margin-bottom: 4rem; 
        }
        @media (min-width: 1024px) {
            .footer-grid { grid-template-columns: repeat(5, 1fr); }
        }

        /* FAQ Accordion */
        .faq-container { background: white; border-radius: 1.5rem; border: 1px solid var(--brand-100); padding: 1rem 1.5rem; }
        .accordion-item { border-bottom: 1px solid var(--brand-100); }
        .accordion-header { width: 100%; display: flex; justify-content: space-between; align-items: center; background: none; border: none; padding: 1.5rem 0; text-align: left; cursor: pointer; font-size: 1rem; font-weight: 500; color: var(--brand-900); }
        .accordion-content { max-height: 0; overflow: hidden; transition: max-height 0.3s ease-out; color: #666; line-height: 1.6; }
        .accordion-item.active .accordion-content { max-height: 400px; padding-bottom: 1.5rem; }

        /* Floating Button */
        #scroll-top { position: fixed; bottom: 2rem; right: 2rem; width: 48px; height: 48px; background: var(--brand-900); color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1); cursor: pointer; transition: all 0.3s; z-index: 100; opacity: 0; visibility: hidden; border: none; }
        #scroll-top.show { opacity: 1; visibility: visible; }

        /* Mobile Accordion Styles */
        .mobile-nav-item { border-bottom: 1px solid #f0f0f0; }
        .mobile-nav-btn { width: 100%; display: flex; justify-content: space-between; align-items: center; padding: 1rem 0; background: none; border: none; font-family: 'Montserrat', sans-serif; font-weight: 600; color: #483525; font-size: 1rem; cursor: pointer; text-align: left; }
        .mobile-nav-content { max-height: 0; overflow: hidden; transition: all 0.3s ease; display: flex; flex-direction: column; padding-left: 1rem; background: #fafafa; border-radius: 0.5rem; }
        .mobile-nav-item.active .mobile-nav-content { max-height: 300px; padding-bottom: 1rem; margin-bottom: 0.5rem; }
        .mobile-nav-item.active .chevron-mobile { transform: rotate(180deg); }
        .mobile-link-sub { display: block; padding: 0.75rem 0; color: #5D4632; text-decoration: none; font-size: 0.9rem; font-family: 'Montserrat', sans-serif; }
    </style>
"@
}

# 2. Header Template
function Get-Header($depthPath) {
    return @"
    <!-- Premium Header -->
    <header id="main-header" style="background-color: #FFFFFF; border-bottom: 1px solid #EAE1D8; position: sticky; top: 0; z-index: 1000;">
        <nav class="container-custom" style="padding: 0 1rem;">
            <div style="display: flex; align-items: center; width: 100%; justify-content: space-between; height: 80px;">
                <a href="$depthPath" style="display: flex; align-items: center; text-decoration: none; height: 100%;">
                    <img src="https://i.ibb.co/vvPV65rT/ana-candida-s-f.png" alt="Instituto Ana Cândida" style="height: 70px; width: auto; object-fit: contain;">
                </a>
                
                <div class="hidden lg:flex items-center" style="gap: 2.2rem; height: 100%;">
                    <!-- O Instituto Dropdown -->
                    <div class="nav-item-dropdown">
                        <span class="nav-link-main">O Instituto <i data-lucide="chevron-down" class="chevron-icon"></i></span>
                        <div class="dropdown-menu">
                            <a href="${depthPath}o-instituto" class="dropdown-item">Visão Geral</a>
                            <a href="${depthPath}o-instituto#sobre" class="dropdown-item">Sobre nós</a>
                            <a href="${depthPath}o-instituto#missao" class="dropdown-item">Missão e Valores</a>
                            <a href="${depthPath}o-instituto#como-trabalhamos" class="dropdown-item">Como Trabalhamos</a>
                        </div>
                    </div>

                    <!-- Terapia Sistêmica Dropdown -->
                    <div class="nav-item-dropdown">
                        <span class="nav-link-main">Terapia Sistêmica <i data-lucide="chevron-down" class="chevron-icon"></i></span>
                        <div class="dropdown-menu">
                            <a href="${depthPath}terapia-sistemica" class="dropdown-item">Visão Geral</a>
                            <a href="${depthPath}terapia-sistemica#que-e" class="dropdown-item">O que é</a>
                            <a href="${depthPath}terapia-sistemica#para-quem" class="dropdown-item">Para quem é</a>
                            <a href="${depthPath}terapia-sistemica#primeira-sessao" class="dropdown-item">Primeira Sessão</a>
                        </div>
                    </div>

                    <!-- Atendimentos Dropdown -->
                    <div class="nav-item-dropdown">
                        <span class="nav-link-main">Atendimentos <i data-lucide="chevron-down" class="chevron-icon"></i></span>
                        <div class="dropdown-menu">
                            <a href="${depthPath}atendimentos/terapia-individual" class="dropdown-item">Terapia Individual</a>
                            <a href="${depthPath}atendimentos/terapia-casal" class="dropdown-item">Terapia de Casal</a>
                            <a href="${depthPath}atendimentos/terapia-familiar" class="dropdown-item">Terapia Familiar</a>
                            <a href="${depthPath}atendimentos/parentalidade" class="dropdown-item">Parentalidade</a>
                        </div>
                    </div>

                    <a href="${depthPath}equipe" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none; font-family: 'Montserrat', sans-serif;">Equipe</a>
                    <a href="${depthPath}galeria" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none; font-family: 'Montserrat', sans-serif;">Galeria</a>
                    <a href="${depthPath}conteudos" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none; font-family: 'Montserrat', sans-serif;">Conteúdos</a>
                    <a href="${depthPath}contato" style="font-size: 0.9rem; font-weight: 500; color: #483525; text-decoration: none; font-family: 'Montserrat', sans-serif;">Contato</a>
                </div>

                <div class="hidden lg:block">
                    <a href="https://wa.me/5562981838006" target="_blank" style="background-color: #483525; color: white; padding: 0.6rem 1.5rem; border-radius: 9999px; text-decoration: none; font-size: 0.85rem; font-weight: 600; font-family: 'Montserrat', sans-serif;">Agendar</a>
                </div>
                
                <button class="lg:hidden" style="background: none; border: none; cursor: pointer; color: #483525;" onclick="toggleMobileMenu()">
                    <i data-lucide="menu"></i>
                </button>
            </div>
        </nav>
    </header>

    <!-- Mobile Menu Overlay -->
    <div id="mobile-menu" class="hidden" style="position: fixed; inset: 0; background: white; z-index: 2000; padding: 2rem; display: none; flex-direction: column; overflow-y: auto;">
        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
            <a href="$depthPath" style="display: flex; align-items: center; text-decoration: none; margin-bottom: 1rem;">
                <img src="https://i.ibb.co/vvPV65rT/ana-candida-s-f.png" alt="Instituto Ana Cândida" style="height: 60px; width: auto; object-fit: contain;">
            </a>
            <button onclick="toggleMobileMenu()" style="background: none; border: none; cursor: pointer; color: #483525;"><i data-lucide="x"></i></button>
        </div>
        
        <div style="display: flex; flex-direction: column;">
            <!-- O Instituto Mobile -->
            <div class="mobile-nav-item">
                <button class="mobile-nav-btn" onclick="toggleMobileAccordion(this)">
                    O Instituto <i data-lucide="chevron-down" class="chevron-mobile" style="width: 18px; height: 18px;"></i>
                </button>
                <div class="mobile-nav-content">
                    <a href="${depthPath}o-instituto" class="mobile-link-sub">Visão Geral</a>
                    <a href="${depthPath}o-instituto#sobre" class="mobile-link-sub">Sobre nós</a>
                    <a href="${depthPath}o-instituto#missao" class="mobile-link-sub">Missão e Valores</a>
                    <a href="${depthPath}o-instituto#como-trabalhamos" class="mobile-link-sub">Como Trabalhamos</a>
                </div>
            </div>

            <!-- Terapia Sistêmica Mobile -->
            <div class="mobile-nav-item">
                <button class="mobile-nav-btn" onclick="toggleMobileAccordion(this)">
                    Terapia Sistêmica <i data-lucide="chevron-down" class="chevron-mobile" style="width: 18px; height: 18px;"></i>
                </button>
                <div class="mobile-nav-content">
                    <a href="${depthPath}terapia-sistemica" class="mobile-link-sub">Visão Geral</a>
                    <a href="${depthPath}terapia-sistemica#que-e" class="mobile-link-sub">O que é</a>
                    <a href="${depthPath}terapia-sistemica#para-quem" class="mobile-link-sub">Para quem é</a>
                    <a href="${depthPath}terapia-sistemica#primeira-sessao" class="mobile-link-sub">Primeira Sessão</a>
                </div>
            </div>

            <!-- Atendimentos Mobile -->
            <div class="mobile-nav-item">
                <button class="mobile-nav-btn" onclick="toggleMobileAccordion(this)">
                    Atendimentos <i data-lucide="chevron-down" class="chevron-mobile" style="width: 18px; height: 18px;"></i>
                </button>
                <div class="mobile-nav-content">
                    <a href="${depthPath}atendimentos/terapia-individual" class="mobile-link-sub">Terapia Individual</a>
                    <a href="${depthPath}atendimentos/terapia-casal" class="mobile-link-sub">Terapia de Casal</a>
                    <a href="${depthPath}atendimentos/terapia-familiar" class="mobile-link-sub">Terapia Familiar</a>
                    <a href="${depthPath}atendimentos/parentalidade" class="mobile-link-sub">Parentalidade</a>
                </div>
            </div>

            <a href="${depthPath}equipe" style="font-weight: 600; color: #483525; text-decoration: none; padding: 1.25rem 0; border-bottom: 1px solid #f0f0f0; font-family: 'Montserrat', sans-serif;">Equipe</a>
            <a href="${depthPath}galeria" style="font-weight: 600; color: #483525; text-decoration: none; padding: 1.25rem 0; border-bottom: 1px solid #f0f0f0; font-family: 'Montserrat', sans-serif;">Galeria</a>
            <a href="${depthPath}conteudos" style="font-weight: 600; color: #483525; text-decoration: none; padding: 1.25rem 0; border-bottom: 1px solid #f0f0f0; font-family: 'Montserrat', sans-serif;">Conteúdos</a>
            <a href="${depthPath}contato" style="font-weight: 600; color: #483525; text-decoration: none; padding: 1.25rem 0; border-bottom: 1px solid #f0f0f0; font-family: 'Montserrat', sans-serif;">Contato</a>
            
            <a href="https://wa.me/5562981838006" target="_blank" style="background-color: #483525; color: white; padding: 1rem; border-radius: 0.75rem; text-align: center; text-decoration: none; font-weight: 600; margin-top: 2rem; font-family: 'Montserrat', sans-serif;">Agendar Agora</a>
        </div>
    </div>
"@
}

# 3. Footer Template (With Direct SVGs for Social Assets)
function Get-Footer($depthPath) {
    return @"
    <!-- Premium Footer -->
    <footer style="background-color: var(--brand-900); color: #FDFBFA !important; padding: 5rem 0 3rem; position: relative; z-index: 50; width: 100%;">
        <div class="container-custom">
            <div class="footer-grid">
                <!-- Col 1: Brand & Social -->
                <div>
                    <a href="${depthPath}" style="display: block; margin-bottom: 1.5rem;">
                        <img src="https://i.ibb.co/vvPV65rT/ana-candida-s-f.png" alt="Instituto Ana Cândida" style="height: 50px; width: auto; object-fit: contain; filter: brightness(0) invert(1);">
                    </a>
                    <p style="opacity: 0.9; line-height: 1.6; margin-bottom: 2rem; font-size: 0.95rem; color: #FDFBFA !important;">Cuidado relacional com base na Terapia Sistêmica. Acolhimento, ética e ciência para casais e famílias.</p>
                    <div style="display: flex; gap: 1.5rem; align-items: center;">
                        <a href="https://instagram.com" target="_blank" style="color: #FDFBFA !important; text-decoration: none;" aria-label="Instagram">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>
                        </a>
                        <a href="https://linkedin.com" target="_blank" style="color: #FDFBFA !important; text-decoration: none;" aria-label="LinkedIn">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path><rect x="2" y="9" width="4" height="12"></rect><circle cx="4" cy="4" r="2"></circle></svg>
                        </a>
                    </div>
                </div>
                <!-- Col 2: Institucional -->
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Institucional</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}o-instituto" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Sobre nós</a></li>
                        <li><a href="${depthPath}equipe" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Equipe</a></li>
                        <li><a href="${depthPath}atendimentos" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Serviços</a></li>
                        <li><a href="${depthPath}conteudos" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Blog</a></li>
                    </ul>
                </div>
                <!-- Col 3: Contato -->
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Contato</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 1.2rem;">
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA !important; opacity: 0.9;"><i data-lucide="map-pin" style="width: 18px; height: 18px; flex-shrink: 0; margin-top: 0.2rem;"></i><span>Village, Goiânia-GO</span></li>
                        <li style="display: flex; align-items: center; gap: 0.75rem; color: #FDFBFA !important; opacity: 0.9;"><i data-lucide="phone" style="width: 18px; height: 18px; flex-shrink: 0;"></i><span>(62) 98183-8006</span></li>
                        <li style="display: flex; align-items: flex-start; gap: 0.75rem; color: #FDFBFA !important; opacity: 0.9;"><i data-lucide="mail" style="width: 18px; height: 18px; flex-shrink: 0; margin-top: 0.2rem;"></i><span style="word-break: break-all;">contato@institutoanacandida.com.br</span></li>
                    </ul>
                </div>
                <!-- Col 4: Legal -->
                <div>
                    <h4 style="font-family: 'Playfair Display', serif; font-size: 1.1rem; margin-bottom: 1.5rem; font-weight: 700; color: #FDFBFA !important;">Legal</h4>
                    <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.8rem;">
                        <li><a href="${depthPath}privacidade" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Privacidade (LGPD)</a></li>
                        <li><a href="${depthPath}termos" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Termos de Uso</a></li>
                        <li><a href="#" style="color: #FDFBFA !important; text-decoration: none; opacity: 0.8;">Política de Remarcação</a></li>
                    </ul>
                </div>
                <!-- Col 5: Aviso Important -->
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
    <button id="scroll-top" title="Voltar ao topo"><i data-lucide="chevron-up"></i></button>
"@
}

# --- Execution ---
$lvl1 = @("agendar/index.html", "atendimentos/index.html", "contato/index.html", "conteudos/index.html", "equipe/index.html", "galeria/index.html", "o-instituto/index.html", "terapia-sistemica/index.html", "upsell/index.html", "downsell/index.html")
$lvl2 = @("atendimentos/terapia-individual/index.html", "atendimentos/terapia-casal/index.html", "atendimentos/terapia-familiar/index.html", "atendimentos/parentalidade/index.html")

function Process-File($f, $depthPath) {
    $path = Join-Path $root $f
    if (Test-Path $path) {
        $content = Get-Content $path -Raw
        
        # Style Update
        $style = Get-StyleBlock
        if ($content -match '(?s)<style>.*?</style>') {
            $content = $content -replace '(?s)<style>.*?</style>', $style
        } else {
            $content = $content -replace "</head>", "`n$style`n</head>"
        }

        # Header/Footer Injection
        $header = Get-Header $depthPath
        $footer = Get-Footer $depthPath
        $content = $content -replace '(?s)<!-- Premium Header -->.*?<main>', "$header`n    <main>"
        $content = $content -replace '(?s)<!-- Premium Footer -->.*?</footer>', $footer
        
        # Scripts
        $s = @"
    <script src="https://unpkg.com/lucide@latest"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => { lucide.createIcons(); });
        function toggleMobileMenu() { const m = document.getElementById('mobile-menu'); m.style.display = (m.style.display === 'flex') ? 'none' : 'flex'; }
        function toggleMobileAccordion(btn) { 
            const item = btn.parentElement; 
            const isActive = item.classList.contains('active');
            document.querySelectorAll('.mobile-nav-item').forEach(i => i.classList.remove('active'));
            if(!isActive) item.classList.add('active');
            setTimeout(() => { lucide.createIcons(); }, 10);
        }
        window.addEventListener('scroll', () => { 
            const header = document.getElementById('main-header');
            const b = document.getElementById('scroll-top'); 
            if(window.scrollY > 20) header.classList.add('scrolled'); else header.classList.remove('scrolled');
            if(window.scrollY > 500) b.classList.add('show'); else b.classList.remove('show'); 
        });
        document.getElementById('scroll-top')?.addEventListener('click', () => window.scrollTo({top: 0, behavior: 'smooth'}));
    </script>
"@
        $content = $content -replace '(?s)<script src="https://unpkg.com/lucide@latest"></script>.*?<script>.*?</script>', $s
        
        Set-Content $path $content
    }
}

foreach ($f in $lvl1) { Process-File $f "../" }
foreach ($f in $lvl2) { Process-File $f "../../" }
Process-File "index.html" "./"

Write-Host "Site-wide update complete: Dropdowns fixed & SVGs injected!"
