\ProvidesClass{darwiin-cv}[2015/10/04 v1.1 Christophe ROGER CV Class]

\LoadClass[11pt,a4paper]{article}

% Dependences
%A Few Useful Packages
\RequirePackage[frenchb]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec} 					        % for loading fonts
\RequirePackage{xunicode,xltxtra,url,parskip} 	    % other packages for formatting
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{fullpage}
\RequirePackage[margin=1.5cm]{geometry}
\RequirePackage{fontawesome}
\RequirePackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{longtable} 	

% Setup hyperref package, and colours for links
\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour, linkcolor=linkcolour}

\pagestyle{empty}                         % non-numbered pages
\font\fb=''[cmr10]''                      % for use with \LaTeX command

% Setup CV sections
\titleformat{\section}{\Large\raggedright}{}{0em}{}[\titlerule]
\titlespacing{\section}{0pt}{2pt}{2pt}

% Configure list
\setlist[itemize,1]{label=\faAngleRight, nosep, leftmargin=2em} 

% Setup Array : new column type
\newcolumntype{R}[1]{>{\hfill}m{#1}}

%Italian hyphenation for the word: ''corporations''
\hyphenation{im-pre-se}

% Setup fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[BoldFont = Helvetica Neue, ItalicFont=Helvetica Neue Thin Italic ,SmallCapsFont = Helvetica Neue Light]{Helvetica Neue Thin}

%New length definition
\newlength{\datebox}
\settowidth{\datebox}{Décembre 2009}

\newlength{\rightcolumnlength}
\setlength{\rightcolumnlength}{14.8cm}

\newlength{\leftcolumn}
\setlength{\leftcolumn}{2.5cm}

% Macros
\newcommand{\el}{\enspace \faAngleRight \enspace}					        % Custom itemize to use with array
\newcommand\link[2]{\href{#1}{#2} \faLink }
\newcommand\important[1]{\textbf #1}

% Render author's name
% Usage: \user{<firstanme>}{<lastname>}
\newcommand\user[2]{\color{Blue}{\LARGE #1 #2}\color{Black}}      % Username

% Render a text with its symbol
% Usage; \socialtext{<icon>}{<label>}
\newcommand{\socialtext}[2]{\mbox{\textcolor{Blue}{#1}\hspace{0.5em}#2\hspace{1em}}}

% Render a link with its symbol
% Usage; \sociallink{<icon>}{<label>}
\newcommand{\sociallink}[3]{\mbox{\textcolor{Blue}{#1}\hspace{0.5em}\href{#2}{#3}\hspace{1em}}}

% Define author's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Render author's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\socialtext{\faMapMarker}{#1}}

% Render author's infos
% Usage: \infos{<infos>}
\newcommand*{\infos}[1]{\socialtext{\faInfo}{#1}}

% Render author's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\sociallink{\faLinkedin}{http://www.linkedin.com/in/#1/fr}{linkedin.com/in/#1}}

% Render author's viadeo(optional)
% Usage: \viadeo{<viadeo-nick>}
\newcommand*{\viadeo}[1]{\sociallink{\faViadeo}{http://www.viadeo.com/fr/profile/#1}{viadeo.com/fr/profile/#1}} 

% Render author's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\sociallink{\faGithub}{https://www.github.com/#1}{github.com/#1}}           % Github icon + URL

% Render author's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\sociallink{\faAt}{mailto:#1}{#1}}

\newcommand*\smartphone[1]{\socialtext{\faMobilePhone}{#1}}    

\newcommand\resumetitle[1]{
	\par{
		\bigskip\center{\Large \color{Blue}#1\color{Black}}\par
	}
	\bigskip
}

% Define social entries to print in header
\newcommand{\socialinfo}[1]{\def\@socialinfo{#1}}

% Render CV header
% Needs \firstname and \lastname to be defined
\newcommand{\makecvheader}{
  \user{\@firstname}{\@lastname}\\
  \small{\@socialinfo}
}

%Resume part title definition
\newcommand\sectionTitle[2]{\section{\texorpdfstring{\color{Blue}#2\enspace #1}{#1}}}

\newenvironment{experiences}{%
  \begin{longtable}{R{\leftcolumn}|p{\rightcolumnlength}}
}{%
  \end{longtable}
}

\newcommand\experience[7]{
  \textsc{#1}    & \textsc{#2, #3, #4}   								\\
  \textsc{#5}    & \begin{minipage}[t]{\rightcolumnlength}
  					         #6
                   \end{minipage}										\\
                 & \footnotesize{\emph{Technologies utilisées:} #7 } 	\\
  }

\newcommand\consultantexperience[9]{
  \textsc{#1}    & \textsc{#2, #3, #4}   								\\
  \textsc{#5}    & \emph{#6} pour #7                       				\\
  				       & 	\begin{minipage}[t]{\rightcolumnlength}
  						        #8
                   	\end{minipage}										\\
                 & \footnotesize{\emph{Technologies utilisées:} #9 } 	\\
  }

\newcommand\emptySeparator{\multicolumn{2}{c}{}\\}
