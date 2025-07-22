# 马克思主义答题挑战游戏 - 部署脚本
Write-Host "========================================" -ForegroundColor Green
Write-Host "马克思主义答题挑战游戏 - 部署脚本" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "请选择部署方式：" -ForegroundColor Yellow
Write-Host "1. Vercel部署（需要Node.js）"
Write-Host "2. 启动本地服务器预览"
Write-Host "3. 显示部署说明"
Write-Host ""

$choice = Read-Host "请输入选择 (1-3)"

switch ($choice) {
    "1" {
        Write-Host "" 
        Write-Host "正在检查Node.js..." -ForegroundColor Yellow
        try {
            $nodeVersion = node --version
            Write-Host "Node.js版本: $nodeVersion" -ForegroundColor Green
            
            Write-Host "正在检查Vercel CLI..." -ForegroundColor Yellow
            try {
                $vercelVersion = vercel --version
                Write-Host "Vercel CLI版本: $vercelVersion" -ForegroundColor Green
            }
            catch {
                Write-Host "正在安装Vercel CLI..." -ForegroundColor Yellow
                npm install -g vercel
            }
            
            Write-Host "开始部署到Vercel..." -ForegroundColor Green
            vercel --prod
        }
        catch {
            Write-Host "错误：未找到Node.js，请先安装Node.js" -ForegroundColor Red
            Write-Host "下载地址：https://nodejs.org/" -ForegroundColor Cyan
        }
    }
    "2" {
        Write-Host ""
        Write-Host "正在启动本地服务器..." -ForegroundColor Yellow
        Write-Host "服务器地址：http://localhost:8080/code.html" -ForegroundColor Green
        Write-Host "按Ctrl+C停止服务器" -ForegroundColor Yellow
        Write-Host ""
        python -m http.server 8080
    }
    "3" {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "部署说明" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "1. Vercel部署（推荐）：" -ForegroundColor Yellow
        Write-Host "   - 需要安装Node.js和npm"
        Write-Host "   - 运行：npm install -g vercel"
        Write-Host "   - 然后运行：vercel --prod"
        Write-Host ""
        Write-Host "2. GitHub Pages：" -ForegroundColor Yellow
        Write-Host "   - 上传到GitHub仓库"
        Write-Host "   - 在设置中启用Pages"
        Write-Host ""
        Write-Host "3. Netlify：" -ForegroundColor Yellow
        Write-Host "   - 访问netlify.com"
        Write-Host "   - 拖拽文件夹到网站"
        Write-Host ""
        Write-Host "4. 本地预览：" -ForegroundColor Yellow
        Write-Host "   - 运行：python -m http.server 8080"
        Write-Host "   - 访问：http://localhost:8080/code.html"
        Write-Host ""
        Write-Host "详细说明请查看README.md文件" -ForegroundColor Cyan
        Write-Host ""
    }
    default {
        Write-Host "无效选择，请重新运行脚本" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "按任意键退出..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")