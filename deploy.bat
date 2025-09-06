@echo off
echo ========================================
echo    DESPLIEGUE DE BRAND DEKARY
echo ========================================
echo.

echo [1/4] Instalando dependencias...
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Fallo al instalar dependencias
    pause
    exit /b 1
)

echo.
echo [2/4] Compilando Sass para producción...
call npm run build
if %errorlevel% neq 0 (
    echo ERROR: Fallo al compilar Sass
    pause
    exit /b 1
)

echo.
echo [3/4] Añadiendo archivos al repositorio...
git add .
if %errorlevel% neq 0 (
    echo ERROR: Fallo al añadir archivos
    pause
    exit /b 1
)

echo.
echo [4/4] Haciendo commit y push...
git commit -m "Update brand guidelines - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git push origin main
if %errorlevel% neq 0 (
    echo ERROR: Fallo al hacer push
    pause
    exit /b 1
)

echo.
echo ========================================
echo    DESPLIEGUE COMPLETADO EXITOSAMENTE
echo ========================================
echo.
echo La página se actualizará en GitHub Pages en unos minutos.
echo URL: https://brand.dekary.com/
echo.
pause
