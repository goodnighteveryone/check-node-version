# check-node-version

根据项目目录下的.nvmrc 文件信息自动切换所需的 node 版本

## 环境要求

- Windows
- 安装了 nvm for Windows
- 默认使用 powershell（或使用了 powershell 的 Windows terminal）

## 运行原理

- 在项目文件夹下打开终端会默认运行 ps1 脚本

## 不足

- 每次终端打开都会运行脚本，可能会稍微影响终端加载速度，不过考虑到如果当前没有.nvmrc 文件，只是做了一个 if 判断，所以总的来说还在可接受范围内
