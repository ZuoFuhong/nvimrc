## neovim配置文件

### 0x00 前期安装
前期需要安装的工具, 最新的`neovim`, ~~`Packer`,~~ `ctags`, ~~`ripgrep`~~ ... 

```shell
brew install neovim
brew install universal-ctags
```

* 插件管理使用`Lazy.nvim`管理

### 0x01 快捷键映射
`<leader>` = ','
i = 插入(编辑)模式
n = 普通模式
v = 可视模式

| 命令       | 功能                 |
| ---------- | -------------------- |
| i `<C-g>`  | 退出编辑             |
| n `<C-n>`  | 打开/关闭NERDTree    |
| n `<C-\>`  | 打开 toggleterm 终端 |
| n `<leader>tt` | 打开/关闭Tagbar window |
| v `<leader>yy` | visual模式下，选中内容复制到粘贴板|
| v `<leader>xx` | visual模式下，选中内容剪切到粘贴板|
| n `<leader><space>` | 关闭高亮 |
| n `<leader>g?`  | 查看git blame |
| n `<leader>gdf` | 查看git diff  |
| n `<leader>w-`  | 水平分屏      | 
| n `<leader>w\\` | 竖直分屏      | 
| n `<leader>fg`       | live_grep    |
| n `<leader>ff`       | 搜索文件      | 
| n `<leader>gt`  | Go Test执行，如果光标在Test函数名上就只执行特定的函数 |

常用快捷键:

```
## 快捷键
ctrl + o 回退
ctrl + i 前进
v + e    选中单词
z + c    折叠
z + o    展开

## 翻屏
Ctrl + F 屏幕向下滚动一屏
Ctrl + B 屏幕向上滚动一屏
Ctrl + E 屏幕向下滚动一行
Ctrl + Y 屏幕向上滚动一行
Ctrl + D 屏幕向下滚动半屏
Ctrl + U 屏幕向上滚动半屏

## 文件管理
ma  新建文件
md  删除文件
mm  文件重命名
C   设置项目根目录

## 命令
:qa                 退出全部
:Lazy               打开lazy
:%s/{old}/{new}/g   全局替换
/\C                 区分大小写搜索
```

### 0x02 Lua文件
配置文件通过lua文件来管理。core是一些核心模块，configs主要是插件配置相关。

* `core/base.lua` 常规配置，被`init.lua`调用
* `core/plugins.lua` neovim安装的插件管理，使用Lazy管理插件
* `core/theme.lua`和`core/gui.lua` 配置的主题和gui相关
* `configs/autocomplete.lua` 自动补齐配置
* `configs/lsp_config.lua` goimport和gopls相关的使用配置, 以及C/C++，Python的LSP配置
* `configs/go_test.lua` 执行Go Test相关的快速配置
* `configs/lsp_rust.lua` rust-tools相关的配置
* `configs/search.lua` 搜索相关的配置，使用了插件`telescope.nvim`
* `configs/treesitter.lua` 代码语法高亮相关的插件，配置常用的语言
* `configs/vscode.lua` 使用vscode主题，配置了背景透明

### 0x03 参考文档

* https://neovim.io/
* https://www.lazyvim.org/
* https://codeium.com/
* https://github.com/preservim/nerdtree
* https://www.jetbrains.com/lp/mono
* https://github.com/universal-ctags/ctags

### 0xff Enjoy it

