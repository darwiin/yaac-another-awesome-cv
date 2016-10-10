%% Copyright 2016 Christophe Roger
%
% Author: 
%Christophe Roger
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3c
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is M. C. Roger.
%
% This work consists of the files awesome-source-cv.cls 

\ProvidesClass{awesome-source-cv}[2016/09/20 v1.2 Awesome Source CV Class]

\LoadClass[11pt,a4paper]{article}

\newcommand{\setColors}[3] {
  \newcommand{\accentColor}{\color{#1}}
  \newcommand{\linkColor}{\color{#1}}
  \newcommand{\symbolcolor}{\textcolor{#1}}
}

\newcommand{\resetColors}[3] {
  \renewcommand{\accentColor}{\color{#1}}
  \renewcommand{\linkColor}{\color{#1}}
  \renewcommand{\symbolcolor}{\textcolor{#1}}
}

\setColors{Blue}{Blue}{Blue}

\DeclareOption{green}{
  \resetColors{PineGreen}{PineGreen}{PineGreen}
}

\DeclareOption{red}{
  \resetColors{Red}{Red}{Red}
}

\DeclareOption{myBlue}{
  \renewcommand{\accentColor}{\color{myBlue}}
  \renewcommand{\linkColor}{\color{myBlue}}
  \renewcommand{\symbolcolor}{\textcolor{myBlue}}
}

\DeclareOption{localFont}{
  \def\@local{local}
}
\ProcessOptions

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
\RequirePackage{xifthen}

\definecolor{myBlue}{HTML}{FF9B1C}

% Setup hyperref package, and colours for links
\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{breaklinks}

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
%

% Define font to use according to localFont option
\ifthenelse{\isundefined{\@local}}
{
  %\setmainfont[BoldFont = Helvetica Neue, ItalicFont=Helvetica Neue Thin Italic ,SmallCapsFont = Helvetica Neue Light]{Helvetica Neue Thin}
  \setmainfont[BoldFont = Source Sans Pro Semibold, ItalicFont=Source Sans Pro Light Italic,SmallCapsFont = Source Sans Pro]{Source Sans Pro Light}
}
{
  \setmainfont{SourceSansPro-Light}[
    Path = fonts/, 
      BoldFont = SourceSansPro-Semibold, 
      ItalicFont = SourceSansPro-LightIt, 
      SmallCapsFont = SourceSansPro-Regular]
}

%New length definition
\newlength{\datebox}
\settowidth{\datebox}{Décembre 2009}

\newlength{\rightcolumnlength}
\setlength{\rightcolumnlength}{14.8cm}

\newlength{\leftcolumn}
\setlength{\leftcolumn}{2.5cm}

% Font Awesome icons aliases
\newcommand{\mailSymbol}{\faAt}
\newcommand{\locationSymbol}{\faMapMarker}
\newcommand{\infoSymbol}{\faInfo}
\newcommand{\linkedinSymbol}{\faLinkedin}
\newcommand{\viadeoSymbol}{\faViadeo}
\newcommand{\mobileSymbol}{\faMobilePhone}
\newcommand{\githubSymbol}{\faGithub}

\newcommand\link[2]{\linkColor\href{#1}{#2}\color{Black} }
\newcommand\important[1]{\textbf #1}

% Render author's name
% Usage: \user{<firstanme>}{<lastname>}
\newcommand\user[2]{\accentColor{\LARGE #1 \textbf{#2}}\color{Black}}      % Username

% Render a text with its symbol
% Usage; \socialtext{<icon>}{<label>}
\newcommand{\socialtext}[2]{\mbox{\symbolcolor{#1}\hspace{0.5em}#2\hspace{1em}}}

% Render a link with its symbol
% Usage; \sociallink{<icon>}{<label>}
\newcommand{\sociallink}[3]{\mbox{\symbolcolor{#1}\hspace{0.5em}\link{#2}{#3}\hspace{1em}}}

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

% Define author's tagline
% Usage: \tagline{<tag line>}
\newcommand*{\tagline}[1]{\def\@tagline{#1}}

% Render author's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\socialtext{\locationSymbol}{#1}}

% Render author's infos
% Usage: \infos{<infos>}
\newcommand*{\infos}[1]{\socialtext{\infoSymbol}{#1}}

% Render author's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\sociallink{\linkedinSymbol}{http://www.linkedin.com/in/#1/fr}{linkedin.com/in/#1}}

% Render author's viadeo(optional)
% Usage: \viadeo{<viadeo-nick>}
\newcommand*{\viadeo}[1]{\sociallink{\viadeoSymbol}{http://www.viadeo.com/fr/profile/#1}{viadeo.com/fr/profile/#1}} 

% Render author's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\sociallink{\githubSymbol}{https://www.github.com/#1}{github.com/#1}}           % Github icon + URL

% Render author's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\sociallink{\mailSymbol}{mailto:#1}{#1}}

% Render author's mobile phone (optional)
% Usage: \smartphone{<mobile phone number>}
\newcommand*\smartphone[1]{\socialtext{\mobileSymbol}{#1}}    

\newcommand\resumetitle[1]{
	\par{
		\bigskip\center{\Large \accentColor\textsc{#1}\color{Black}}\par
	}
	\bigskip
}

% Define social entries to print in header
\newcommand{\socialinfo}[1]{\def\@socialinfo{#1}}

% Render CV header
% Needs \@firstname, \@lastname and \@tagline to be defined
\newcommand{\makecvheader}{
  \user{\@firstname}{\@lastname}\\
  \small{\@socialinfo}
  \resumetitle{\@tagline}
}

% Resume part title definition
\newcommand\sectionTitle[2]{\section{\texorpdfstring{\accentColor#2\enspace #1}{#1}}}

% Define the 'experiences' environment
\newenvironment{experiences}{%
  \begin{longtable}{R{\leftcolumn}|p{\rightcolumnlength}}
}{%
  \end{longtable}
}

% Render an experience in the experiences environment
% Usage: 
%  {<End date>}      {<Title>}{<Enterprise>}{<Country>}
%  {<Start date}     {
%                      <Experience description (Could be a list)>
%                    }
%                    {<Technology list>}
\newcommand\experience[7]{
  \textsc{#1}    & \textsc{#2, #3, #4}   								\\
  \textsc{#5}    & \begin{minipage}[t]{\rightcolumnlength}
  					         #6
                   \end{minipage}										\\
                 & \footnotesize{\emph{Technologies utilisées:} #7 } 	\\
  }

% Render a consultant experience in the experiences environment
% Usage: 
%  {<End date>}      {<Consultant title>}{<Consulting Enterprise>}{<Country>}
%  {<Start date}     {<Client title>}{<Client business unit>}
%                    {
%                      <Experience description (Could be a list)>
%                    }
%                    {<Technology list>}
\newcommand\consultantexperience[9]{
  \textsc{#1}    & \textsc{#2, #3, #4}   								\\
  \textsc{#5}    & \emph{#6} pour #7                       				\\
  				       & 	\begin{minipage}[t]{\rightcolumnlength}
  						        #8
                   	\end{minipage}										\\
                 & \footnotesize{\emph{Technologies utilisées:} #9 } 	\\
  }

\newcommand\emptySeparator{\multicolumn{2}{c}{}\\}
