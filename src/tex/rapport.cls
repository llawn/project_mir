%class by Dylan Marin

\LoadClass[a4paper,12pt]{article}

% ================================= Packages ===================================

\RequirePackage[french]{babel} %language of document. See: https://ctan.org/pkg/babel
\RequirePackage[utf8]{inputenc} %encoding utf8. See: https://ctan.org/pkg/inputenc.
\RequirePackage[T1]{fontenc} %activating T1 font encoding. See: https://ctan.org/pkg/fontenc
\RequirePackage[section]{placeins} %placins keeps floats ‘in their place’, preventing them from floating past a “\FloatBarrier” command into another section. With section argument a “\FloatBarrier” is used at the beginning of each "\section" command. See: https://ctan.org/pkg/placeins
\RequirePackage{mathtools} %provides a series of packages designed to enhance the appearance of documents containing a lot of mathematics. See: https://ctan.org/pkg/mathtools
\RequirePackage{siunitx} %The siunitx package aims to provide a unified method for LATEX users to typeset numbers and units correctly and easily. See: https://ctan.org/pkg/siunitx
\RequirePackage{float} %Improves the interface for defining floating objects such as figures and tables. See: https://ctan.org/pkg/float
\RequirePackage{graphicx} %x The ‘extended’ graphics package build upon 'graphics'. See: https://ctan.org/pkg/graphicz
\RequirePackage[justification=centering]{caption} %The caption package offers customization of captions in float. See: https://ctan.org/pkg/caption
\RequirePackage{subcaption} %subcaption for subfigure. See: https://ctan.org/pkg/subcaption
\RequirePackage{wallpaper} %This collection contains files to add wallpapers (background images) to LATEX documents. See: https://ctan.org/pkg/wallpaper
\RequirePackage{nomencl} %help authors format a nomenclature to explain symbols put \makenomenclature in the preamble of your document. Put \printnomenclature at the place you want to have your nomenclature list. Issue the \nomenclature command for each symbol.  See: https://ctan.org/pkg/nomencl
\RequirePackage{fancyhdr} %The package provides extensive facilities, both for constructing headers and footers, and for controlling their use. See: https://ctan.org/pkg/fancyhdr
\RequirePackage{url} %The command \url is a form of verbatim command that allows linebreaks at certain characters or combinations of characters. See: https://ctan.org/pkg/url
\RequirePackage[hidelinks]{hyperref} %The hyperref package is used to handle cross-referencing commands in LATEX to produce hypertext links in the document. See: https://ctan.org/pkg/hyperref
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %The package provides an easy and flexible user interface to customize page layout, implementing auto-centering and auto-balancing mechanisms so that the users have only to give the least description for the page layout. See: https://ctan.org/pkg/geometry

% =============================== Macros (Setup) ===============================

\newcommand{\documenttitle}[1]{\renewcommand{\documenttitle}{#1}}
\newcommand{\subject}[1]{\renewcommand{\subject}{#1}}
\newcommand{\subsubject}[1]{\renewcommand{\subsubject}{#1}}
\newcommand{\teachertitle}[1]{\renewcommand{\teachertitle}{#1}}
\newcommand{\teacher}[1]{\renewcommand{\teacher}{#1}}
\newcommand{\studenttitle}[1]{\renewcommand{\studenttitle}{#1}}
\newcommand{\student}[1]{\renewcommand{\student}{#1}}
\newcommand{\school}[1]{\renewcommand{\school}{#1}}
\newcommand{\documenttype}[1]{\renewcommand{\documenttype}{#1}}
\newcommand{\footertitle}[1]{\renewcommand{\footertitle}{#1}}

\newcommand{\logoheader}[1]{\renewcommand{\logoheader}{#1}}
\newcommand{\logobackground}[1]{\renewcommand{\logobackground}{#1}}
\newcommand{\logotitle}[1]{\renewcommand{\logotitle}{#1}}

% =================================== Setup ====================================

% Define page styles
\fancypagestyle{plain}{%
	\fancyhf{} % clear header and footer
	\setlength{\headheight}{2cm}
	%\fancyheadoffset{1cm}

	%Header
	\fancyhead[L]{\includegraphics[scale=0.3]{\logoheader}}
	\fancyhead[R]{\nouppercase{\leftmark}}

	%Footer
	\fancyfoot[L]{\subsubject}
	\fancyfoot[C]{\textbf{\footertitle}}
}

\fancypagestyle{fancy}{%
	\fancyhf{} % clear header and footer
	\setlength{\headheight}{2cm}
	%\fancyheadoffset{1cm}

	%Header
	\fancyhead[L]{\includegraphics[scale=0.3]{\logoheader}}
	\fancyhead[R]{\nouppercase{\leftmark}}

	%Footer
	\fancyfoot[L]{\subsubject}
	\fancyfoot[C]{\textbf{\footertitle}}
	\fancyfoot[R]{\thepage}
}

\newcommand{\maketitlepage}{

	\begin{titlepage}

		\ThisLRCornerWallPaper{0.6}{\logobackground}

		\centering
		\includegraphics[width=0.5\textwidth]{\logotitle}\par\vspace{1cm}
		{\scshape\LARGE \school \par}

		\vspace{1cm}

		{\scshape\Large \subject \\ \subsubject \\ \documenttype\par}

		\vspace{0.8cm}

		\rule{\linewidth}{0.2 mm} \\[0.4 cm]
		{\huge\bfseries \documenttitle \par} \
		\rule{\linewidth}{0.2 mm} \\[1.5 cm]

		\vspace{0.8cm}

		\begin{minipage}{0.5\textwidth}
			\begin{flushleft} \large
				\emph{\textbf{\studenttitle :}} \\
				\student\\
			\end{flushleft}
		\end{minipage}
		~
		\begin{minipage}{0.4\textwidth}
			\begin{flushright} \large
				\emph{\textbf{\teachertitle :}} \\
				\teacher \\
			\end{flushright}
		\end{minipage}\\[4cm]

		\vspace{\fill}
		{\large \today\par}

	\end{titlepage}
}

% =================================== Macros ===================================

\newcommand{\makefigure}[4]{
	\begin{figure}[ht]
		\centering
		\includegraphics[height=#2]{#1}
		\caption{#3}
		\label{#4}
	\end{figure}
}

\newcommand{\nomunit}[1]{
    \renewcommand{\nomentryend}{\hspace*{\fill}#1}
}
