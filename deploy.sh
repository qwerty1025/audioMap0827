#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e

# 打包
npm run build

# 移動至到打包後的dist目錄 
cd dist

# 因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git init  
git add -A
git commit -m 'deploy'

# 部署到 https://github.com/chou0728/eric-project.git 分支為 gh-pages
git push -f https://github.com/qwerty1025/audioMap0827.git main:gh-pages
 
cd -

# 執行指令，在終端機輸入 deploy.sh