@echo off
chcp 65001 >nul
title Publicar Jogo da Cobrinha - GitHub Pages
cd /d "%~dp0"

set "msg=%~1"
if "%msg%"=="" set "msg=Atualiza jogo da cobrinha (%date% %time%)"

echo.
echo === Publicando alteracoes no GitHub Pages ===
echo.

git add -A
git commit -m "%msg%"
git push origin main

echo.
echo Pronto! Site atualizado em: https://rodrigolucas1.github.io/cobrinha-web/
echo (o GitHub publica em cerca de 1 minuto)
echo.
pause
