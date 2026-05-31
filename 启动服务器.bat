@echo off
echo ============================================
echo  Chrome Extensions V2 数据分析面板
echo ============================================
echo.
echo 正在启动本地服务器...
echo.
python -m http.server 8080
if errorlevel 1 (
    echo Python 不可用，尝试 Node.js...
    npx http-server -p 8080
)
if errorlevel 1 (
    echo 请安装 Python 或 Node.js
    pause
)
