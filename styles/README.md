# styles 文件说明

`pages/` 存放独立页面，`common/` 存放通用格式。所有文件由根目录 [xmu-graduate.cls](../xmu-graduate.cls) 按原有依赖顺序加载。

## pages：独立页面

| 文件 | 作用和内容 |
| --- | --- |
| [cover.tex](pages/cover.tex) | 学位论文与实践报告封面的布局及信息输出。 |
| [originality.tex](pages/originality.tex) | 原创性声明文字、课题资助字段和签名日期。 |
| [copyright.tex](pages/copyright.tex) | 著作权授权文字、涉密选项和签名日期。 |
| [ai-declaration.tex](pages/ai-declaration.tex) | 使用或未使用 AI 工具的声明文字和填写字段。 |
| [committee.tex](pages/committee.tex) | 主席、委员信息命令及无边框名单表格。 |
| [spine.tex](pages/spine.tex) | 书脊内容的文字试排接口。 |
| [abstract-zh.tex](pages/abstract-zh.tex) | 中文摘要标题、正文、关键词和前置页码起点。 |
| [abstract-en.tex](pages/abstract-en.tex) | 英文摘要标题、正文、关键词和分页。 |
| [contents.tex](pages/contents.tex) | 中英文目录生成、目录条目和双语章节命令。 |
| [references.tex](pages/references.tex) | 参考文献标题、目录项、列表排版和 BibTeX 样式。 |
| [appendix.tex](pages/appendix.tex) | 附录标题、目录项、A 前缀编号和计数器恢复。 |
| [acknowledgement.tex](pages/acknowledgement.tex) | 致谢标题、目录项、页眉和右对齐落款。 |

## common：通用格式

| 文件 | 作用和内容 |
| --- | --- |
| [base.tex](common/base.tex) | 基础文档类与宏包加载；纸张、页边距和引用方式。 |
| [metadata.tex](common/metadata.tex) | 封面、声明、关键词等信息字段及选项命令。 |
| [fonts.tex](common/fonts.tex) | 中英文字体映射、数学字体和默认行距。 |
| [declaration-common.tex](common/declaration-common.tex) | 兼容声明排版的共用标题和空字段命令。 |
| [headings.tex](common/headings.tex) | 正文段落、各级标题、页眉页脚及打印版分页。 |
| [floats.tex](common/floats.tex) | 图表和公式编号、标题、单位、说明，以及代码和算法环境。 |
| [footnotes.tex](common/footnotes.tex) | 带圈脚注、按页编号、脚注字体和分隔线。 |
