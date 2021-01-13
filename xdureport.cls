\ProvidesClass{xdureport}
\LoadClass[a4paper,12pt]{ctexart}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{geometry}
\RequirePackage{fontspec}
\RequirePackage{fancyhdr}
\RequirePackage{lipsum}
\RequirePackage{zhlipsum}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{gbt7714}
\RequirePackage[colorlinks=true]{hyperref}
% 代码高亮方案宏包
\RequirePackage{listings}
%\RequirePackage{minted}

\setmainfont{Times New Roman}
\setCJKmainfont{FandolSong-Regular.otf} [BoldFont=FandolSong-Bold.otf]
% 设置等宽的代码字体
% \setmonofont{Courier New}
\setmonofont{Consolas}
% \setmonofont{Source Code Pro}
\bibliographystyle{gbt7714-numerical}


\geometry{top=1.25in,bottom=1.25in,left=1.25in,right=1.25in}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\class[1]{\def\@class{#1}}
\newcommand\teacher[1]{\def\@teacher{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}

%页眉页脚
\pagestyle{fancy}
\fancyhead[L]{\small\@name}
\fancyhead[C]{\small\@course}
\fancyhead[R]{\small\@stuid}

% 封面
\newcommand{\makecover}{
  \thispagestyle{empty}
  \newgeometry{top=1.8in}
  \begin{center}
    \begin{center}
      \includegraphics[width=0.6\linewidth]{figure/logo.pdf}
    \end{center}
    \vspace{2cm}
    \bfseries{\fontsize{30pt}{30pt}\selectfont{\@course}}\\
    \vspace{0.5cm}
    \bfseries\huge{\@expname}
    \vspace{3cm}
    \begin{center}
      \large
      \renewcommand\arraystretch{1.5}
      \begin{tabular}{C{4cm}C{6cm}}
        \bfseries\Large{姓名：}     & \Large\@name    \\ \cline{2-2}
        \bfseries\Large{学号：}     & \Large\@stuid   \\ \cline{2-2}
        \bfseries\Large{学院：}     & \Large\@college \\ \cline{2-2}
        \bfseries\Large{专业：}     & \Large\@major   \\ \cline{2-2}
        \bfseries\Large{班级：}     & \Large\@class   \\ \cline{2-2}
        \bfseries\Large{指导老师：} & \Large\@teacher \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vfill
    \Large{\@date}
  \end{center}
  \newpage
  \newgeometry{top=1.25in,bottom=1.25in,left=1.25in,right=1.25in}
}

% 环境
\newenvironment{note}{\kaishu 注：}{}

% 用来设置附录中代码的样式

\lstset{
  basicstyle          =   \sffamily,          % 基本代码风格
  keywordstyle        =   \bfseries,          % 关键字风格
  commentstyle        =   \rmfamily\itshape,  % 注释的风格，斜体
  stringstyle         =   \ttfamily,  % 字符串风格
  flexiblecolumns,                % 别问为什么，加上这个
  numbers             =   left,   % 行号的位置在左边
  showspaces          =   false,  % 是否显示空格，显示了有点乱，所以不现实了
  numberstyle         =   \zihao{-4}\ttfamily,    % 行号的样式，小五号，tt等宽字体
  showstringspaces    =   false,
  captionpos          =   t,      % 这段代码的名字所呈现的位置，t指的是top上面
  frame               =   lrtb,   % 显示边框
}

\lstdefinestyle{Python}{
  language        =   Python, % 语言选Python
  basicstyle      =   \zihao{-4}\ttfamily,
  numberstyle     =   \zihao{-4}\ttfamily,
  keywordstyle    =   \color{blue},
  keywordstyle    =   [2] \color{teal},
  stringstyle     =   \color{magenta},
  commentstyle    =   \color{red}\ttfamily,
  breaklines      =   true,   % 自动换行，建议不要写太长的行
  columns         =   fixed,  % 如果不加这一句，字间距就不固定，很丑，必须加
  basewidth       =   0.5em,
}

\lstdefinestyle{Matlab}{
  language        =   Matlab, % 语言选Matlab
  basicstyle      =   \zihao{-4}\ttfamily,
  numberstyle     =   \zihao{-4}\ttfamily,
  keywordstyle    =   \color{blue},
  keywordstyle    =   [2] \color{teal},
  stringstyle     =   \color{magenta},
  commentstyle    =   \color{red}\ttfamily,
  breaklines      =   true,   % 自动换行，建议不要写太长的行
  columns         =   fixed,  % 如果不加这一句，字间距就不固定，很丑，必须加
  basewidth       =   0.5em,
}