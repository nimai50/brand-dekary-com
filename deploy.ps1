# Script de despliegue para Brand Dekary
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "    DESPLIEGUE DE BRAND DEKARY" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "[1/4] Instalando dependencias..." -ForegroundColor Yellow
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Fallo al instalar dependencias" -ForegroundColor Red
    Read-Host "Presiona Enter para continuar"
    exit 1
}

Write-Host ""
Write-Host "[2/4] Compilando Sass para producción..." -ForegroundColor Yellow
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Fallo al compilar Sass" -ForegroundColor Red
    Read-Host "Presiona Enter para continuar"
    exit 1
}

Write-Host ""
Write-Host "[3/4] Añadiendo archivos al repositorio..." -ForegroundColor Yellow
git add .
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Fallo al añadir archivos" -ForegroundColor Red
    Read-Host "Presiona Enter para continuar"
    exit 1
}

Write-Host ""
Write-Host "[4/4] Haciendo commit y push..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "Update brand guidelines - $timestamp"
git push origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Fallo al hacer push" -ForegroundColor Red
    Read-Host "Presiona Enter para continuar"
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "    DESPLIEGUE COMPLETADO EXITOSAMENTE" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "La página se actualizará en GitHub Pages en unos minutos." -ForegroundColor Cyan
Write-Host "URL: https://brand.dekary.com/" -ForegroundColor Cyan
Write-Host ""
Read-Host "Presiona Enter para continuar"
