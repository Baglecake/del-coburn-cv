%% academic-cv.cls
%% Minimal academic CV class (Del Coburn, 2024)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academic-cv}[2024/01/01 Minimal Academic CV Class]

% Pass all options through to article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Base class
\LoadClass{article}

% Packages (pdfLaTeX-compatible defaults)
\RequirePackage[top=0.75in, bottom=0.75in, left=0.75in, right=0.75in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{ifthen}

% Sans-serif default (works on pdfLaTeX)
\RequirePackage[scaled]{helvet}
\renewcommand{\familydefault}{\sfdefault}

% Hyperref colors
\hypersetup{
  colorlinks=true,
  linkcolor=black,
  urlcolor=blue,
  citecolor=black
}

% No page numbers
\pagestyle{empty}

% Remove paragraph indentation
\setlength{\parindent}{0pt}

% Section formatting
\titleformat{\section}{\large\bfseries}{}{0pt}{}[\titlerule]
\titlespacing*{\section}{0pt}{1.2ex}{0.8ex}

% Lists with no left margin and tight spacing
\setlist[itemize]{leftmargin=1.5em, itemsep=0.15em, topsep=0.15em, parsep=0pt, partopsep=0pt}
\setlist[itemize,2]{leftmargin=1.5em}

% ---------
% Stored fields for header
% ---------
\newcommand{\@name}{}
\newcommand{\@email}{}
\newcommand{\@mobile}{}
\newcommand{\@homepage}{}
\newcommand{\@github}{}
\newcommand{\@address}{}

\newcommand{\name}[2]{\gdef\@name{#1}} % second arg ignored for compatibility
\newcommand{\email}[1]{\gdef\@email{#1}}
\newcommand{\mobile}[1]{\gdef\@mobile{#1}}
\newcommand{\homepage}[1]{\gdef\@homepage{#1}}
\newcommand{\github}[1]{\gdef\@github{#1}}
\newcommand{\address}[1]{\gdef\@address{#1}}

% Header
\newcommand{\makecvheader}{
  \begin{center}
    {\LARGE\textbf{\@name}}\par
    \ifthenelse{\equal{\@email}{}}{}{\href{mailto:\@email}{\@email}}
    \ifthenelse{\equal{\@mobile}{}}{}{ \quad\textbullet\quad \@mobile}
    \ifthenelse{\equal{\@homepage}{}}{}{ \quad\textbullet\quad \href{\@homepage}{\@homepage}}
    \ifthenelse{\equal{\@github}{}}{}{ \quad\textbullet\quad \href{https://github.com/\@github}{github.com/\@github}}
    \ifthenelse{\equal{\@address}{}}{}{ \quad\textbullet\quad \@address}
  \end{center}
  \vspace{0.5em}
}

% Footer (left, center, right)
\newcommand{\makecvfooter}[3]{%
  \vfill
  \noindent\small #1 \hfill #2 \hfill #3
}

% Convenience wrappers
\newcommand{\cvsection}[1]{\section*{#1}}
\newcommand{\cvevent}[4]{% title, org, dates, location
  \textbf{#1}\hfill {\itshape #3}\\
  {\itshape #2}%
  \ifthenelse{\equal{#4}{}}{}{ \hfill #4}%
  \par\vspace{0.2em}
}

% Simple achievement line: icon arg ignored if not using FontAwesome
\newcommand{\cvachievement}[3]{\textbf{#2}: #3\par}

\endinput
