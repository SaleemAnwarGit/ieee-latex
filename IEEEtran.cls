\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{IEEEtran}[2026/09/21 Lightweight IEEE-style article class]

\LoadClass[10pt,twocolumn]{article}
\RequirePackage[letterpaper,top=0.75in,bottom=1in,left=0.67in,right=0.67in,columnsep=0.24in]{geometry}
\RequirePackage{cite}
\RequirePackage{fancyhdr}
\RequirePackage{url}

\makeatletter

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}

\setlength{\parindent}{1em}
\setlength{\parskip}{0pt}
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
  {-2.5ex plus -1ex minus -.2ex}%
  {1.3ex plus .2ex}%
  {\normalfont\normalfont\centering\bfseries\MakeUppercase}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {1.5ex plus .5ex minus .2ex}%
  {0.8ex plus .2ex}%
  {\normalfont\itshape}}

\renewenvironment{abstract}{%
  \small
  \begin{center}\bfseries\MakeUppercase{Abstract}\end{center}%
  \quotation
}{\endquotation}

\newcommand{\IEEEauthorblockN}[1]{\textnormal{#1}}
\newcommand{\IEEEauthorblockA}[1]{\textit{#1}}
\newcommand{\IEEEkeywords}[1]{\par\smallskip\textit{Index Terms---#1.}}

\renewcommand{\maketitle}{%
  \twocolumn[\begin{@twocolumnfalse}
    \begin{center}
      {\LARGE\bfseries \@title\par}
      \vskip 1em
      {\large \@author\par}
      \vskip 1em
    \end{center}
  \end{@twocolumnfalse}]
}
\makeatother

\endinput