# 马克思主义答题挑战游戏

一个包含40个关卡、2000道题库和特效系统的在线答题游戏。

## 功能特色

- 🎓 40个关卡，难度递增
- 📚 2000道马克思主义题库
- 🎆 5种特效系统（烟花、星星雨、彩带、高级彩带、闪电）
- 💰 金币系统和特效商店
- 🌟 星空背景效果
- 📱 响应式设计，支持移动端

## 在线部署方案

### 方案一：Vercel部署（推荐）

1. 安装Node.js和npm（如果还没有安装）
   - 访问 https://nodejs.org/ 下载安装

2. 安装Vercel CLI
   ```bash
   npm install -g vercel
   ```

3. 在项目目录下运行
   ```bash
   vercel --prod
   ```

4. 按照提示完成部署

### 方案二：GitHub Pages部署

1. 将项目上传到GitHub仓库
2. 在仓库设置中启用GitHub Pages
3. 选择主分支作为源
4. 访问 `https://你的用户名.github.io/仓库名/code.html`

### 方案三：Netlify部署

1. 访问 https://netlify.com/
2. 注册账号并登录
3. 拖拽整个项目文件夹到Netlify
4. 等待部署完成

### 方案四：其他静态网站托管

- **Surge.sh**: 简单快速的静态网站部署
- **Firebase Hosting**: Google提供的免费托管服务
- **Cloudflare Pages**: 快速的全球CDN部署

## 本地运行

使用Python内置服务器：
```bash
python -m http.server 8080
```

然后访问 `http://localhost:8080/code.html`

## 文件说明

- `code.html` - 主游戏文件
- `effects_demo.html` - 特效演示页面
- `vercel.json` - Vercel部署配置
- `.vercel/project.json` - Vercel项目配置

## 游戏说明

1. **关卡系统**: 40个关卡，每关50道题
2. **难度分级**: 简单(1-13关)、中等(14-26关)、困难(27-40关)
3. **金币奖励**: 答对题目获得金币，可购买特效
4. **特效系统**: 答对题目时触发随机特效
5. **进度保存**: 自动保存游戏进度

## 技术栈

- 纯HTML/CSS/JavaScript
- Canvas动画特效
- 响应式设计
- 本地存储

---

作者: Xqingfeng.  
@zzuit