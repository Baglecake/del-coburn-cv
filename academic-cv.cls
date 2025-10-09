%% academic-cv.cls
%% Copyright 2024 Del Coburn
%
% This class provides formatting for an academic CV

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academic-cv}[2024/01/01 Academic CV Class]

% Base class
\LoadClass[11pt,letterpaper]{article}

% Required packages
\RequirePackage[margin=1in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{xcolor}

% Hyperlink setup
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=blue,
    citecolor=blue
}

% Remove page numbers
\pagestyle{empty}

% Section formatting
\titleformat{\section}
    {\Large\bfseries\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\large\bfseries\raggedright}
    {}{0em}
    {}

% Custom commands for CV entries
\newcommand{\cventry}[4]{
    \textbf{#1} \hfill \textit{#2}\\
    \textit{#3}\\
    #4
    \vspace{0.5em}
}

\newcommand{\cvitem}[2]{
    \textbf{#1}: #2\\
    \vspace{0.3em}
}

% Adjust list spacing
\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}

% Custom spacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.5em}

\endinput
