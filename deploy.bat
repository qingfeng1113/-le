@echo off
echo ========================================
echo 马克思主义答题挑战游戏 - 部署脚本
echo ========================================
echo.
echo 请选择部署方式：
echo 1. Vercel部署（需要Node.js）
echo 2. 启动本地服务器预览
echo 3. 显示部署说明
echo.
set /p choice=请输入选择 (1-3): 

if "%choice%"=="1" goto vercel
if "%choice%"=="2" goto local
if "%choice%"=="3" goto help
goto end

:vercel
echo.
echo 正在检查Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo 错误：未找到Node.js，请先安装Node.js
    echo 下载地址：https://nodejs.org/
    goto end
)

echo 正在检查Vercel CLI...
vercel --version >nul 2>&1
if errorlevel 1 (
    echo 正在安装Vercel CLI...
    npm install -g vercel
)

echo 开始部署到Vercel...
vercel --prod
goto end

:local
echo.
echo 正在启动本地服务器...
echo 服务器地址：http://localhost:8080/code.html
echo 按Ctrl+C停止服务器
echo.
python -m http.server 8080
goto end

:help
echo.
echo ========================================
echo 部署说明
echo ========================================
echo.
echo 1. Vercel部署（推荐）：
echo    - 需要安装Node.js和npm
echo    - 运行：npm install -g vercel
echo    - 然后运行：vercel --prod
echo.
echo 2. GitHub Pages：
echo    - 上传到GitHub仓库
echo    - 在设置中启用Pages
echo.
echo 3. Netlify：
echo    - 访问netlify.com
echo    - 拖拽文件夹到网站
echo.
echo 4. 本地预览：
echo    - 运行：python -m http.server 8080
echo    - 访问：http://localhost:8080/code.html
echo.
echo 详细说明请查看README.md文件
echo.

:end
echo.
echo 按任意键退出...
pause >nul