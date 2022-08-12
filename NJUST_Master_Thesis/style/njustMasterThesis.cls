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
\ctexset{
	chapter={
		name={,},%标题前后词语 name={<前部分>,<后部分>}
		number={\arabic{chapter}},%标题编号
		format=\bfseries\songtibold\zihao{-3}\raggedright,%标题整体格式
		aftername=\hspace{1em},%编号与标题之间的距离
		beforeskip=0pt,%beforeskip控制标题与上面正文的距离。
		afterskip=18pt%afterskip控制标题与下面正文的距离。
	},
	section={
		name={,}, 
		number={\arabic{chapter}.\arabic{section}},
		format=\bfseries\songtibold\zihao{4}\raggedright,
		aftername=\hspace{1em},
		beforeskip=12pt,
		afterskip=12pt
	},
	subsection={
		name={,},
		number={\arabic{chapter}.\arabic{section}.\arabic{subsection}},
		format=\bfseries\songtibold\zihao{-4}\raggedright,
		aftername=\hspace{1em},
		beforeskip=6pt,
		afterskip=6pt
	}
}

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
\newenvironment{abstractZH}{
	{
	\fancyhead[L]{\songti\zihao{-5}硕士学位论文}
	\fancyhead[R]{\songti\zihao{-5}论文标题}
	}
	\centering{
		\bfseries\songtibold\zihao{-3}摘\hspace{12mm}要
	}
	\vspace{18pt}
}{}