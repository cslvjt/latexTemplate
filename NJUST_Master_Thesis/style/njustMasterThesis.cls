\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{style/NJUSTBachelorThesis}
  [2015/03/15 v2.x njustThesis
   document class]

\LoadClass[UTF8,12pt,a4paper]{ctexbook}
\RequirePackage[top=30mm,bottom=24mm,left=25mm,right=25mm]{geometry}

\setCJKfamilyfont{SCB}[AutoFakeBold = {2.17}]{SimSun}             
\newcommand{\songtibold}{\CJKfamily{SCB}} 

%设置标题格式
\RequirePackage{titlesec}
\titleformat{\chapter}{\bfseries\songtibold\zihao{-3}\raggedright}{\songtibold\arabic{chapter}}{1em}{}[]
\titlespacing{\chapter}{0pt}{0pt}{18pt}
\titleformat{\section}{\bfseries\songtibold\zihao{4}\raggedright}{\songtibold\arabic{chapter}.\arabic{section}}{1em}{}[]
\titlespacing{\section}{0pt}{12pt}{12pt}
\titleformat{\subsection}{\bfseries\songtibold\zihao{-4}\raggedright}{\songtibold\arabic{chapter}.\arabic{section}.\arabic{subsection}}{1em}{}[]
\titlespacing{\subsection}{0pt}{6pt}{6pt}

%设置页眉页脚
\RequirePackage{fancyhdr}
\setlength{\headsep}{10pt}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\,\thechapter\,\quad #1}{}}
\fancypagestyle{plain}{%
	\fancyhf{}%
	\fancyhead[LO]{\songti\zihao{-5}硕士学位论文}
	\fancyhead[RO]{\songti\zihao{-5}论文标题}
	\fancyhead[LE]{\songti\zihao{-5} \leftmark}%
	\fancyhead[RE]{\songti\zihao{-5}硕士学位论文}%
	\fancyfoot[RO,LE]{\zihao{-5} ~\thepage~}
}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LO]{\songti\zihao{-5}硕士学位论文}
\fancyhead[RO]{\songti\zihao{-5}论文标题}
\fancyhead[LE]{\songti\zihao{-5} \leftmark}%
\fancyhead[RE]{\songti\zihao{-5}硕士学位论文}%
\fancyfoot[RO,LE]{\zihao{-5} ~\thepage~}

%设置字体
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\setCJKmainfont{SimSun}
%设置行距
\linespread{1.5}

%加载pdf文件
\RequirePackage{pdfpages}

%设置中文摘要格式
