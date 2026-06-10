# ElegantBook (Typst)

**优美的 Typst 书籍模板 | An Elegant Typst Template for Books**

-------

## 快速开始 Quick Start

### 在线使用 Online Usage

将 `elegantbook.typ` 和你的文档文件上传到 [Typst Web App](https://typst.app/) 即可在线使用。

### 本地使用 Local Usage

1. 安装 [Typst](https://github.com/typst/typst)（v0.12+）
2. 克隆本仓库或下载 Release
3. 编译文档：

```bash
typst compile elegantbook-cn.typ   # 中文版
typst compile elegantbook-en.typ   # 英文版
```

实时预览：

```bash
typst watch elegantbook-cn.typ
```

### 在你的项目中使用

将 `elegantbook.typ` 复制到你的工作目录，然后在文档顶部导入：

```typst
#import "elegantbook.typ": *

#show: elegantbook.with(
  title:     [你的书名],
  author:    "作者",
  date:      "2026 年",
  cover:     "figure/cover.jpg",
  logo:      "figure/logo-blue.png",
  color:     "cyan",
  lang:      "cn",
)
```

## 功能特性 Features

- 🎨 **5 种颜色主题**：blue、green、cyan（默认）、gray、black
- 🌐 **中英文双语支持**：通过 `lang` 参数切换
- 📐 **丰富的数学环境**：定义、定理、引理、推论、公理、公设、命题等
- 📝 **例题/练习/问题环境**：按章节自动编号
- 📦 **证明/笔记/解/注等环境**：带引导符号
- 📖 **内容提要环境**：章节开头概览
- 🖼️ **自定义封面**：支持封面图片、Logo、作者信息等
- 📚 **版本历史工具**：`datechange` 函数记录更新

## 项目结构 Project Structure

```
ElegantBook/
├── elegantbook.typ        ← 核心模板文件
├── elegantbook-cn.typ     ← 中文演示文档
├── elegantbook-en.typ     ← 英文演示文档
├── reference.bib          ← 参考文献
├── figure/                ← 封面图片、Logo 等
│   ├── cover.jpg
│   └── logo-blue.png
└── image/                 ← 文档中使用的插图
```

## 致谢 Acknowledgement

本模板的排版风格借鉴自 [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook)（原 LaTeX 版本），感谢原项目及其贡献者的优秀设计。

The typographic style of this template is inspired by [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook) (the original LaTeX version). Thanks to the original project and its contributors for the excellent design.

## 协议 License

本模板发布遵循 LaTeX 项目公共许可证 1.3c 或更高版本。

This work is released under the LaTeX Project Public License, v1.3c or later.
