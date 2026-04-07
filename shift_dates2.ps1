$file = "C:\Users\hp\.gemini\antigravity\scratch\calendario_rutik\index.html"
$content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)

# Replace in reverse order so we don't accidentally double-replace
$content = $content.Replace("SÁBADO 18 Y DOMINGO 19 DE ABRIL", "SÁBADO 25 Y DOMINGO 26 DE ABRIL")
$content = $content.Replace("VIERNES 17 DE ABRIL", "VIERNES 24 DE ABRIL")
$content = $content.Replace("JUEVES 16 DE ABRIL", "JUEVES 23 DE ABRIL")
$content = $content.Replace("MIÉRCOLES 15 DE ABRIL", "MIÉRCOLES 22 DE ABRIL")
$content = $content.Replace("MARTES 14 DE ABRIL", "MARTES 21 DE ABRIL")
$content = $content.Replace("LUNES 13 DE ABRIL", "LUNES 20 DE ABRIL")

$content = $content.Replace("SÁBADO 11 Y DOMINGO 12 DE ABRIL", "SÁBADO 18 Y DOMINGO 19 DE ABRIL")
$content = $content.Replace("VIERNES 10 DE ABRIL", "VIERNES 17 DE ABRIL")
$content = $content.Replace("JUEVES 9 DE ABRIL", "JUEVES 16 DE ABRIL")
$content = $content.Replace("MIÉRCOLES 8 DE ABRIL", "MIÉRCOLES 15 DE ABRIL")
$content = $content.Replace("MARTES 7 DE ABRIL", "MARTES 14 DE ABRIL")
$content = $content.Replace("LUNES 6 DE ABRIL", "LUNES 13 DE ABRIL")

$content = $content.Replace("SÁBADO 4 Y DOMINGO 5 DE ABRIL", "SÁBADO 11 Y DOMINGO 12 DE ABRIL")
$content = $content.Replace("VIERNES 3 DE ABRIL", "VIERNES 10 DE ABRIL")

[System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
Write-Host "Dates shifted +7 successfully using .NET raw"
