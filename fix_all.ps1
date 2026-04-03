# Script to fix headers and footers globally with the SPECIFIC layout requested
$root = "c:\Users\Usuario\.gemini\antigravity\playground\nascimento-familiar"

# Standard Header Template (Updated for the requested layout)
function Get-Header($depthPath) {
    return @"
    <!-- Premium Header -->
    <header id="main-header" style="background-color: white; border-bottom: 1px solid var(--brand-100); transition: all 0.3s ease;">
        <nav class="container-custom" style="padding: 1rem 2rem;">
            <div style="display: flex; align-items: center; width: 100%; gap: 3rem;">
                <!-- Logo -->
                <a href="$depthPath" class="logo-link" style="flex-shrink: 0;">
                    <span style="color: var(--brand-900);">Instituto</span>
                    <span style="color: var(--brand-500);">Ana Cândida</span>
                </a>

                <!-- Desktop Navigation Items (Centered/Left-aligned next to logo) -->
                <div class="hidden lg:flex items-center" style="gap: 2rem;">
                    <div class="nav-item">
                        <a href="${depthPath}o-instituto" class="nav-link">
                            O Instituto
                            <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i>
                        </a>
                        <div class="dropdown-menu">
                            <a href="${depthPath}o-instituto" class="dropdown-item">Sobre Nós</a>
                            <a href="${depthPath}o-instituto#missao" class="dropdown-item">Missão e Valores</a>
                            <a href="${depthPath}o-instituto#trabalho" class="dropdown-item">Como Trabalhamos</a>
                        </div>
                    </div>

                    <div class="nav-item">
                        <a href="${depthPath}terapia-sistemica" class="nav-link">
                            Terapia Sistêmica
                            <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i>
                        </a>
                        <div class="dropdown-menu">
                            <a href="${depthPath}terapia-sistemica" class="dropdown-item">O que é</a>
                            <a href="${depthPath}terapia-sistemica#para-quem" class="dropdown-item">Para quem é</a>
                            <a href="${depthPath}terapia-sistemica#primeira-sessao" class="dropdown-item">Primeira Sessão</a>
                        </div>
                    </div>

                    <div class="nav-item">
                        <a href="${depthPath}atendimentos" class="nav-link">
                            Atendimentos
                            <i data-lucide="chevron-down" style="width: 14px; height: 14px; opacity: 0.5;"></i>
                        </a>
                        <div class="dropdown-menu">
                            <a href="${depthPath}atendimentos#individual" class="dropdown-item">Terapia Individual</a>
                            <a href="${depthPath}atendimentos#casal" class="dropdown-item">Terapia de Casal</a>
                            <a href="${depthPath}atendimentos#familiar" class="dropdown-item">Terapia Familiar</a>
                            <a href="${depthPath}atendimentos#parentalidade" class="dropdown-item">Parentalidade</a>
                        </div>
                    </div>

                    <a href="${depthPath}equipe" class="nav-link">Equipe</a>
                    <a href="${depthPath}galeria" class="nav-link">Galeria</a>
                    <a href="${depthPath}conteudos" class="nav-link">Conteúdos</a>
                    <a href="${depthPath}contato" class="nav-link">Contato</a>
                </div>

                <!-- Agendar Button (Pushed to the right) -->
                <div class="hidden lg:block" style="margin-left: auto;">
                    <a href="https://wa.me/5562981838006" target="_blank" class="btn btn-primary btn-sm">Agendar</a>
                </div>

                <!-- Mobile Menu Button -->
                <button class="lg:hidden" style="margin-left: auto; background: none; border: none; cursor: pointer; color: var(--brand-900);" onclick="toggleMobileMenu()">
                    <i data-lucide="menu"></i>
                </button>
            </div>
        </nav>
    </header>

    <!-- Mobile Menu Overlay -->
    <div id="mobile-menu" class="hidden">
        <div class="flex justify-between items-center" style="margin-bottom: 2rem;">
            <a href="$depthPath" class="logo-link">
                <span>Instituto</span>
                <span style="color: var(--brand-500);">Ana Cândida</span>
            </a>
            <button style="background: none; border: none; cursor: pointer;" onclick="toggleMobileMenu()">
                <i data-lucide="x"></i>
            </button>
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

function Get-Footer($depthPath) {
    return @"
    <footer style="background-color: var(--brand-900); color: white; padding: 80px 0 40px 0;">
        <div class="container-custom">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 4rem; margin-bottom: 60px;">
                <div style="grid-column: span 1.5;">
                    <a href="$depthPath" class="logo-link" style="font-size: 1.75rem; margin-bottom: 1.5rem; display: block;">
                        <span style="color: white;">Instituto</span>
                        <span style="color: var(--brand-400);">Ana Cândida</span>
                    </a>
                    <p style="color: var(--brand-200); line-height: 1.7; max-width: 400px; margin-bottom: 2rem;">
                        Especialistas em Terapia Sistêmica, acompanhando indivíduos, casais e famílias em sua trajetória de saúde e bem-estar relacional.
                    </p>
                </div>
                <div>
                    <h4 style="font-family: var(--font-serif); font-size: 1.25rem; margin-bottom: 2rem; color: white;">O Instituto</h4>
                    <ul style="list-style: none; display: flex; flex-direction: column; gap: 1rem;">
                        <li><a href="${depthPath}o-instituto" style="color: var(--brand-200); text-decoration: none;">Sobre Nós</a></li>
                        <li><a href="${depthPath}equipe" style="color: var(--brand-200); text-decoration: none;">Nossa Equipe</a></li>
                        <li><a href="${depthPath}terapia-sistemica" style="color: var(--brand-200); text-decoration: none;">Metodologia</a></li>
                    </ul>
                </div>
            </div>
            <div style="border-top: 1px solid rgba(255,255,255,0.1); padding-top: 40px; text-align: center; font-size: 0.875rem; color: var(--brand-300);">
                <p>&copy; 2026 Instituto Ana Cândida. Todos os direitos reservados.</p>
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
            if (window.scrollY > 20) {
                header.classList.add('scrolled');
            } else {
                header.classList.remove('scrolled');
            }
        });
    </script>
"@

$rootFiles = @("index.html")
$depth1Files = @(
    "agendar/index.html",
    "atendimentos/index.html",
    "contato/index.html",
    "conteudos/index.html",
    "equipe/index.html",
    "galeria/index.html",
    "o-instituto/index.html",
    "terapia-sistemica/index.html"
)

$depth2Files = @(
    "atendimentos/terapia-individual/index.html",
    "atendimentos/terapia-casal/index.html",
    "atendimentos/terapia-familiar/index.html",
    "atendimentos/parentalidade/index.html",
    "equipe/ana-candida/index.html",
    "equipe/mariana-silva/index.html",
    "equipe/roberto-mendes/index.html"
)

# Root Update
foreach ($f in $rootFiles) {
    $path = Join-Path $root $f
    $content = Get-Content $path -Raw
    $header = Get-Header "./"
    $footer = Get-Footer "./"
    $content = $content -replace '(?s)<!-- Premium Header -->.*?Header>', $header
    $content = $content -replace '(?s)<!-- Mobile Menu Overlay -->.*?</div>\s+<main>', "$header`n    <main>" # Cleanup if duplicated
    $content = $content -replace '(?s)<!-- Premium Footer -->.*?</footer>', $footer
    $content = $content -replace '(?s)<script src="https://unpkg.com/lucide@latest"></script>.*?<script>.*?</script>', $scriptBlock
    Set-Content $path $content
}

# Depth 1 Update
foreach ($f in $depth1Files) {
    $path = Join-Path $root $f
    if (Test-Path $path) {
        $content = Get-Content $path -Raw
        $header = Get-Header "../"
        $footer = Get-Footer "../"
        $content = $content -replace '(?s)<!-- Premium Header -->.*?Header>', $header
        $content = $content -replace '(?s)<!-- Premium Footer -->.*?</footer>', $footer
        $content = $content -replace '(?s)<script src="https://unpkg.com/lucide@latest"></script>.*?<script>.*?</script>', $scriptBlock
        Set-Content $path $content
    }
}

# Depth 2 Update
foreach ($f in $depth2Files) {
    $path = Join-Path $root $f
    if (Test-Path $path) {
        $content = Get-Content $path -Raw
        $header = Get-Header "../../"
        $footer = Get-Footer "../../"
        $content = $content -replace '(?s)<!-- Premium Header -->.*?Header>', $header
        $content = $content -replace '(?s)<!-- Premium Footer -->.*?</footer>', $footer
        $content = $content -replace '(?s)<script src="https://unpkg.com/lucide@latest"></script>.*?<script>.*?</script>', $scriptBlock
        Set-Content $path $content
    }
}
