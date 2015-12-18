%%
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\declaration[1]{
\btypeout{Verfassererkl\"arung}
\addtotoc{Verfassererkl\"arung}
\thispagestyle{empty}
\newgeometry{bottom=-1.5cm}
\null\vfil
\begin{center}{\huge{\textit{Verfassererkl\"arung}} \par}\end{center}
{\normalsize #1}
\restoregeometry
\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  Januar\or Februar\or März\or April\or Mai\or Juni\or
  Juli\or August\or September\or Oktober\or November\or Dezember\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
%\usepackage[a4paper]{geometry}
\usepackage[a4paper,inner=0.8in,outer=0.8in,top=1.15in,bottom=1in]{geometry}
\setlength{\headheight}{14pt}
%\setlength{\headsep}{0.25in}
%\setlength{\footskip}{1in}
%\usepackage{vmargin}
%\setmarginsrb           { 1.5in}  % left margin
%                        { 0.6in}  % top margin
%                        { 1.0in}  % right margin
%                        { 0.8in}  % bottom margin
%                        {  20pt}  % head height
%                        {0.25in}  % head sep
%                        {   9pt}  % foot height
%                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc,hypcap=false]{caption}
\usepackage{subcaption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Abbildung~\ref{#1}}
\newcommand{\tref}[1]{Tabelle~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Kapitel~\ref{#1}}
\newcommand{\sref}[1]{Abschnitt~\ref{#1}}
\newcommand{\aref}[1]{Anhang~\ref{#1}}
\newcommand{\lref}[1]{Listung~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={black},citecolor={black},filecolor={black},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\expandafter\def\expandafter\UrlBreaks\expandafter{\UrlBreaks\do\-}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {}
\examiner    {}
\degree      {}
\authors     {Björn Kahlert}
\university  {\texorpdfstring{\href{http://www.fu-berlin.de}
                {Freie Universit\"at Berlin}}
                {Freie Universit\"at Berlin}}
\UNIVERSITY  {\texorpdfstring{\href{http://www.fu-berlin.de}
                {FREIE UNIVERSIT\"AT BERLIN}}
                {FREIE UNIVERSIT\"AT BERLIN}}
\department  {\texorpdfstring{\href{https://www.mi.fu-berlin.de/inf/}
                {Institut f\"ur Informatik}}
                {Institut f\"ur Informatik}}
\DEPARTMENT  {\texorpdfstring{\href{https://www.mi.fu-berlin.de/inf/}
                {INSTITUT F\"UR INFORMATIK}}
                {INSTITUT F\"UR INFORMATIK}}
\group       {\texorpdfstring{\href{http://www.inf.fu-berlin.de/w/SE}
                {AG Software Engineering}}
                {AG Software Engineering}}
\GROUP       {\texorpdfstring{\href{http://www.inf.fu-berlin.de/w/SE}
                {AG SOFTWARE ENGINEERING}}
                {AG SOFTWARE ENGINEERING}}
\faculty     {\texorpdfstring{\href{http://www.mi.fu-berlin.de/math/index.html}
                {Fachbereich Mathematik und Informatik}}
                {Fachbereich Mathematik und Informatik}}
\FACULTY     {\texorpdfstring{\href{http://www.mi.fu-berlin.de/math/index.html}
                {FACHBEREICH MATHEMATIK UND INFORMATIK}}
                {FACHBEREICH MATHEMATIK UND INFORMATIK}}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      %{\large\textbf{\UNIVNAME}\par}
      \includegraphics[width=0.28\linewidth]{Figures/{FUSiegel_blau_CMYK}.eps}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      %{\LARGE von \par}
      %\smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large Dissertation \par}
      {\large zur Erlangung des Grades \par}
      {\large Doktor der Naturwissenschaften (Dr. rer. nat.) \par}
      \bigskip
      \bigskip
      %{\large am \par}
      %{\large \deptname \par}
      {\large \facname \par}      
      {\large {\texorpdfstring{\href{http://www.fu-berlin.de}
                {Freie Universit\"at Berlin}}
                {Freie Universit\"at Berlin}} \par}  
      \bigskip
      \bigskip
      \bigskip
      {\Large Berlin, 2015 \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
    \null\cleardoublepage
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{plain}
  \null\vfil
  \begin{center}
    %\setlength{\parskip}{0pt}
    %{\normalsize \UNIVNAME \par}
    %\bigskip
    {\huge{\textit{\abstractname}} \par}
    %\bigskip
    %{\normalsize \facname \par}
    %{\normalsize \deptname \par}
    %\bigskip
    %{\normalsize Doctor of Philosophy\par}
    %\bigskip
    %{\normalsize\bf \@title \par}
    %\medskip
    %{\normalsize by \authornames \par}
    %\bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{2}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Inhaltsverzeichnis}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{Abbildungsverzeichnis}
\addtotoc{Abbildungsverzeichnis}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{Tabellenverzeichnis}
\addtotoc{Tabellenverzeichnis}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abk\"urzungen}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnotations{Notationen}
\usepackage{longtable}
\newcommand\listofnotations[1]{
\btypeout{\listnotations}
\addtotoc{\listnotations}
    \chapter*{\listnotations
      \@mkboth{
          \MakeUppercase\listnotations}{\MakeUppercase\listnotations}}
#1\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Danksagung}
\addtotoc{Danksagung}
\thispagestyle{plain}
\null\vfil
\begin{center}{\huge{\textit{Danksagung}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% End of file `Thesis.cls'.