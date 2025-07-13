安装babel
npm install --save-dev @babel/core
于项目根目录下配置.babelrc
{
 "presets": [],
 "plugins": []
}
安装babel转码规则集
npm install --save-dev @babel/preset-env
将以下内容添加到.babelrc
{
  "presets": [
   "@babel/env"
   ],
  "plugins": []
}
安装命令行转码工具
npm install --save-dev @babel/cli
转码文件
npx example.js -o compiled.js
