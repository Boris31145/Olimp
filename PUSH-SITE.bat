@echo off
chcp 65001 >nul
cd /d "C:\Users\games\Desktop\Ford\Oli\Код"

echo ================================================
echo   ОлимпСНАБЖЕНИЕ — публикация на olimsnab.org
echo ================================================
echo.

git add -A
git status
echo.

set /p MSG="Комментарий к изменениям (Enter = оставить по умолчанию): "
if "%MSG%"=="" set MSG=update: site improvements

git commit -m "%MSG%"
git push origin main

echo.
echo === Готово! Сайт обновлён на olimsnab.org ===
echo    (GitHub Pages обновляется ~1-2 минуты)
echo.
pause
