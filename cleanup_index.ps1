$Path = "c:\Users\Usuario\.gemini\antigravity\playground\nascimento-familiar\index.html"
$Content = Get-Content $Path -Raw

# Remove first style block (the one without id)
$Content = $Content -replace '(?s)<style>.*?</style>', ''

# Remove all Mobile Menu overlays except possibly the first one if it's there
$Content = $Content -replace '(?s)<!-- Mobile Menu Overlay -->.*?</div>\s*?</div>', ''

# Remove all headers
$Content = $Content -replace '(?s)<header.*?>.*?</header>', ''

Set-Content $Path $Content
