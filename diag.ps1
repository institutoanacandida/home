
# Detect and fix encoding of specific metadata strings in equipe pages 
$root = "c:\Users\Usuario\.gemini\antigravity\playground\nascimento-familiar"
$path = Join-Path $root "equipe\ana-candida\index.html"

$bytes = [System.IO.File]::ReadAllBytes($path)
$titleStart = [System.Array]::IndexOf($bytes, [byte]60)  # '<'

# Find <title> position  
$content = [System.Text.Encoding]::UTF8.GetString($bytes)
$titleIdx = $content.IndexOf("<title>")
if ($titleIdx -ge 0) {
    $titleEnd = $content.IndexOf("</title>", $titleIdx)
    $titleText = $content.Substring($titleIdx + 7, $titleEnd - $titleIdx - 7)
    Write-Host "Title text: [$($titleText)]"
    Write-Host "Title bytes: $([System.BitConverter]::ToString([System.Text.Encoding]::UTF8.GetBytes($titleText)))"
}
