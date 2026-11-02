# XMU 研究生学位论文：新增格式规范索引

## 1. 文档用途

本目录中的格式规范用于指导 Codex 修改现有 `styles/pages/*.tex`、`styles/common/*.tex` 文件，使自制的厦门大学研究生学位论文 LaTeX 模板尽可能贴近本次提供的官方 Word 模板及其 PDF 示例。

本批文档只覆盖此前尚未单独整理的格式，不重复定义以下已有文件：

- `pages/cover_format.md`
- `pages/originality_format.md`
- `pages/copyright_format.md`
- `pages/ai-declaration_format.md`
- `pages/committee_format.md`

本批次暂不处理字体家族、中文/西文字体映射和具体字号。已有 `styles/common/fonts.tex` 中的字体配置应保留；除非格式实现确有必要，不要借本次任务重构字体系统。

## 2. 资料优先级

Codex 必须按以下优先级理解资料：

1. **官方研究生 Word 模板 `学位论文模板.docx`**：优先提取页面设置、段落属性、页眉页脚、页码格式、目录样式、脚注编号等 OOXML 信息。
2. **官方研究生模板 PDF `学位论文模板.pdf`**：用于确认 Word 属性最终呈现出的实际页面效果，包括页面顺序、分页、标题位置、图表和公式位置等。
3. **开源模板 `example.tex`**：用于补充 LaTeX 环境、命令、编号逻辑和示例用法。该文件是本科毕业论文模板，不能将其本科规范直接认定为研究生官方要求。
4. **当前工程 `README.md`**：用于确定应修改的现有文件及模块职责。

如果开源 `example.tex` 与研究生 Word/PDF 的规则不一致，以研究生 Word/PDF 为准。若研究生 Word/PDF 没有提供某项规则，应明确标记为“资料未明确”，不得自行编造参数。

## 3. 文件与工程模块对应关系

| 本规范文件 | 主要修改目标 | 内容 |
|---|---|---|
| `common/page_layout_format.md` | `styles/common/base.tex`、`styles/common/headings.tex` | A4、页边距、页眉页脚、分页、页码 |
| `common/body_format.md` | `styles/common/fonts.tex`（仅行距部分）及必要的正文样式定义 | 正文段落对齐、行距、首行缩进 |
| `common/headings_format.md` | `styles/common/headings.tex` | 章、节、小节标题及编号 |
| `pages/abstract_format.md` | `styles/pages/abstract-zh.tex`、`styles/pages/abstract-en.tex` | 中英文摘要页面 |
| `pages/contents_format.md` | `styles/pages/contents.tex` | 中英文目录、缩进、点线和页码 |
| `common/figures_tables_format.md` | `styles/common/floats.tex` | 图片、表格、标题、说明和编号 |
| `common/code_algorithm_format.md` | `styles/common/floats.tex` | 代码块与算法环境（官方材料未提供完整规范） |
| `common/equations_format.md` | `styles/common/floats.tex` | 行间公式、公式编号和引用 |
| `common/footnotes_format.md` | `styles/common/footnotes.tex` | 脚注编号、重置方式、脚注区域 |
| `pages/references_format.md` | `styles/pages/references.tex`、根目录 `.bst` 文件 | 参考文献标题、条目和编号 |
| `pages/appendix_format.md` | `styles/pages/appendix.tex` | 附录层级和编号 |
| `pages/acknowledgement_format.md` | `styles/pages/acknowledgement.tex` | 致谢页面和落款 |

## 4. 给 Codex 的总执行要求

1. 先阅读工程根目录 `README.md`、`xmu-graduate.cls` 和上述相关 `styles/pages/*.tex`、`styles/common/*.tex` 文件，确认现有实现，不要凭空重写。
2. 按本目录规范逐项核对现有实现，优先做最小修改。
3. 不要修改本次明确排除的五类已有格式文件。
4. 不要修改字体家族、字号和字体映射；不要删除或覆盖 `styles/common/fonts.tex` 中已有的字体配置。
5. 不要改变 `main.tex` 中论文各部分的实际内容，也不要擅自改变章节顺序。
6. 不要改变 `xmu-graduate.cls` 中各模块的加载依赖顺序。
7. 如果某项规则没有足够证据，保留现状并在修改报告中说明，不要猜测。
8. 完成后使用项目原有 XeLaTeX/latexmk 编译方式编译，检查分页、目录、交叉引用、页眉页脚和参考文献。
9. 修改报告应列出：修改文件、对应规范、实现方式、编译检查结果，以及尚未解决的差异。

## 5. 已确认的关键页面参数

官方 Word 页面设置中提取到：

- 纸张：A4 纵向，210 mm × 297 mm。
- 上边距：30.0 mm。
- 下边距：25.4 mm。
- 左边距：31.7 mm。
- 右边距：31.7 mm。
- 页眉距页面顶部：20.0 mm。
- 页脚距页面底部：17.5 mm。
- 装订线：0。

正文、参考文献和致谢的页面样例显示：奇数页页眉为当前章节/部分标题，偶数页页眉为论文题目；页眉下方有横线；页码居中。

详细要求以各专项文件为准。
