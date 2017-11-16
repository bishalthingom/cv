% Intro Options
\ProvidesClass{hieudo-build}[2016/07/26 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome}
\pagenumbering{gobble}
\usepackage{datetime2}


% Color definitions
\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{0E0E0F}
\definecolor{subheadings}{HTML}{1A1C1E}
\definecolor{light}{HTML}{6A6A6A}
\definecolor{extra}{HTML}{494646}
\definecolor{url}{HTML}{453265}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/NiveauGrotesk/, Scale=1.09]{Niveau-Lig}\fontsize{10pt}{13pt}

\newcommand{\bold}[1]
{\color{primary}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont #1 \normalfont}
\linespread{1.1}

\newcommand{\timeplace}[1]
{\color{light}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Med}\fontsize{10pt}{12pt}\selectfont #1 \normalfont}


\newcommand{\custombold}[1]
{\color{subheadings}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-ExtraLight}\selectfont #1 \normalfont}
\linespread{1.1}

% Date format
\DTMnewdatestyle{mylastupdate}{%
  \renewcommand*{\DTMdisplaydate}[4]{\DTMtwodigits{##2}.\DTMtwodigits{##3}.##1}\color{date}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-ExtraLight}\fontsize{10pt}{10pt}\selectfont%
  \renewcommand*{\DTMDisplaydate}{\DTMdisplaydate}%
}

% Name command
\newcommand{\namesection}[2]{
	\hspace{-1.7em}\raggedright{\parbox[b]{32em}{\vspace*{\fill}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{34pt}{0cm}\selectfont #1 \vspace*{\fill}}}
    \hfill
    \raggedleft{\parbox[b]{16em}{\color{url}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{11pt}{14pt}\selectfont #2}
    }
    \noindent\makebox[\linewidth]{\color{headings}
\rule{\paperwidth}{0.2pt}}
   	\vspace{-2em} 
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{15pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\raggedright}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Jobtitle command
\newcommand{\workplace}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{12pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Positions command
\newcommand{\position}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Location command
\newcommand{\location}[1]{\color{primary}\raggedright\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Extra command
\newcommand{\extra}[1]{\color{extra}\raggedright\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-LigIta}\fontsize{9.5pt}{12pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Emphasis command
\newcommand{\emphasis}[1]{\color{primary}\raggedright\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Med}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

%Regular
\newcommand{\regular}[1]{\color{primary}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

% Details command
\newcommand{\details}[1]{
\color{gray}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Project command
\newcommand{\project}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{url}\raggedleft
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{10pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

\newcommand{\justified}{%
  \rightskip\z@skip%
  \leftskip\z@skip}