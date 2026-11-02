# 厦门大学研究生学位论文（实践成果总结报告）LaTeX 模板

## 如何编写论文

以 [main.tex](main.tex) 作为正式论文的入口，按下面的位置填写内容。

| 编写内容 | 编辑位置 |
| --- | --- |
| 题目、作者、专业、导师、日期 | `main.tex` 开头对应的信息命令。 |
| 封面类型、声明和答辩委员会信息 | `main.tex` 中对应的设置，按注释填写。 |
| 中文摘要、英文摘要 | `main.tex` 的 `abstract`、`enabstract` 环境内。 |
| 中英文关键词 | `main.tex` 的 `\keywords{中文关键词}{English keywords}`。 |
| 正文章节 | `chapters/` 中的 `.tex` 文件，当前示例为 `chapters/sample.tex`。 |
| 参考文献 | 在 `references.bib` 中添加文献，正文用 `\cite{文献标识}` 引用，列表自动生成。 |
| 图片、公式、表格 | 图片放在 `figures/`，在章节中插入；写法可参考 `chapters/sample.tex`。 |
| 附录、致谢 | `main.tex` 的 `appendix`、`acknowledgement` 环境内。 |

建议每章单独一个文件，例如新建 `chapters/chapter1.tex`、`chapters/chapter2.tex`，然后将 `main.tex` 中“论文正文”处的 `\input{chapters/sample}` 替换为：

```latex
\input{chapters/chapter1}
\input{chapters/chapter2}
```

每个章节文件只写标题和正文，例如：

```latex
\xmuchapter{绪论}{Introduction}
\xmusection{研究背景}{Background}
在这里撰写正文。

\xmusubsection{研究现状}{Related Work}
在这里继续撰写正文。
```

这三个命令分别对应章、节、三级标题，两个参数依次是中文和英文标题，编号与中英文目录自动生成。章节文件无需重复添加 `\documentclass` 或 `\begin{document}`。

日常写作主要编辑 `main.tex`、`chapters/`、`references.bib` 和 `figures/`；需要调整排版时再查看 `styles/`，对应的格式要求记录在 `formats/`。

## 编译与查看

安装支持 XeLaTeX 和 `latexmk` 的 TeX 发行版后，在工程根目录执行：

```sh
latexmk main.tex
```

生成的论文为 `build/main.pdf`，日志和其他编译辅助文件也统一放在 `build/`。使用 VS Code LaTeX Workshop 时，打开 `main.tex` 后执行构建即可。

`graduate-minimal.tex` 是用于测试模板的最小示例；正式论文统一编译 `main.tex`。

## 来源与版权

本模板基于 F5Soft 的开源项目 XMU-Template（https://github.com/F5Soft/xmu-template）改造。原项目提供厦门大学本科毕业论文 LaTeX 模板和答辩幻灯片模板；其论文模板据厦门大学图书馆 i 学堂 LaTeX 讲座中的硕博论文模板改编。Copyright (c) 2022 F5。原 MIT 许可证及免责声明见 LICENSE。

## 文件说明

| 文件或目录 | 作用和内容 |
| --- | --- |
| [main.tex](main.tex) | 完整论文入口，填写论文信息并调用各部分。 |
| [graduate-minimal.tex](graduate-minimal.tex) | 最小可编译示例。 |
| [xmu-graduate.cls](xmu-graduate.cls) | 模板入口，按依赖顺序加载样式文件。 |
| [.latexmkrc](.latexmkrc) | XeLaTeX 编译配置，统一将编译产物输出到 `build/`。 |
| [.vscode/settings.json](.vscode/settings.json) | VS Code LaTeX Workshop 的编译方式和输出目录。 |
| [build/](build/) | 生成的 PDF、SyncTeX、日志、目录和参考文献等辅助文件。 |
| [styles/pages/](styles/pages/) | 封面、声明、摘要、目录、文献等独立页面的排版代码。 |
| [styles/common/](styles/common/) | 基础设置、字体、标题、图表、脚注等通用格式代码。 |
| [styles/README.md](styles/README.md) | 各个样式文件的作用。 |
| [formats/pages/](formats/pages/) | 独立页面的格式规范。 |
| [formats/common/](formats/common/) | 通用格式规范。 |
| [formats/README.md](formats/README.md) | 各份格式规范的内容及总索引入口。 |
| [chapters/sample.tex](chapters/sample.tex) | 正文章节、公式、图表、脚注与引用示例。 |
| [references.bib](references.bib) | 参考文献数据。 |
| [gbt7714-2005.bst](gbt7714-2005.bst) | BibTeX 参考文献著录样式。 |
| [figures/](figures/) | 图片和校名标识资源。 |
| `simsun.ttc`、`simhei.ttf`、`simkai.ttf` | 宋体、黑体、楷体字体文件。 |
| [附件/](附件/)、[毕业论文格式要求/](毕业论文格式要求/) | 学校格式参考文件。 |
| [FORMAT_AUDIT.md](FORMAT_AUDIT.md)、[TODO.md](TODO.md) | 格式核验记录、改造任务和待确认事项。 |
| [LICENSE](LICENSE) | 开源许可证。 |

