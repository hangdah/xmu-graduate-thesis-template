\ProvidesClass{xmu-graduate}[XMU Graduate Thesis Template]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%    XMU Graduate Thesis Template    %%%%%%%%
%%%%%%%%             Made by: F5Soft              %%%%%%%%
%%%%%%%%  https://github.com/F5Soft/xmu-template  %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 本文件为模板入口；各部分格式在 styles/ 目录中修改，文件职责见 README.md。
% 下列文件按依赖顺序加载；main.tex 和章节文件的使用方式不变。

% 基础文档类、宏包与页面边距（geometry 参数）
\input{styles/common/base.tex}

% 论文信息与选项的命令定义；具体信息仍在 main.tex 中填写
\input{styles/common/metadata.tex}

% 中英文字体、数学字体和默认行距
\input{styles/common/fonts.tex}

% 封面布局、字号、间距及封面后的页码设置
\input{styles/pages/cover.tex}

% 三类声明共用的标题样式及空字段划线规则
\input{styles/common/declaration-common.tex}

% 原创性声明的文字与排版
\input{styles/pages/originality.tex}

% 著作权使用声明的文字与排版
\input{styles/pages/copyright.tex}

% 使用或未使用人工智能工具声明的文字与排版
\input{styles/pages/ai-declaration.tex}

% 答辩委员会信息命令与名单页排版
\input{styles/pages/committee.tex}

% 书脊文字试排接口
\input{styles/pages/spine.tex}

% 中文摘要标题、页脚和关键词格式
\input{styles/pages/abstract-zh.tex}

% 英文摘要标题、页脚和关键词格式
\input{styles/pages/abstract-en.tex}

% 中英文目录、目录字体与双语章节命令
\input{styles/pages/contents.tex}

% 正文章节编号、标题间距及章节页眉页脚（含 plain 样式）
\input{styles/common/headings.tex}

% 图片、表格、公式编号及代码和算法样式
\input{styles/common/floats.tex}

% 脚注编号、字体、分隔线与间距
\input{styles/common/footnotes.tex}

% 参考文献页格式、文献样式与条目间距
\input{styles/pages/references.tex}

% 附录标题、页眉页脚及编号规则
\input{styles/pages/appendix.tex}

% 致谢标题、页眉页脚与目录条目
\input{styles/pages/acknowledgement.tex}

\endinput
