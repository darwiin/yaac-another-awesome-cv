Awesome Source CV [![Example](https://img.shields.io/badge/Exemple-pdf-blue.svg)](https://raw.githubusercontent.com/posquit0/Awesome-CV/master/examples/resume.pdf)
=================

## About

**Awesome Source Latex CV** is based on a CV template created by Alessandro Plasmati. The original template use _XeLaTeX_ engine and _[Fontin Sans](http://www.exljbris.com/fontinsans.html)_ font. 

Original Alessandro Plasmati template and more informations can be found here :

   -  [ Scribd ](http://fr.scribd.com/doc/16335667/Writing-your-Professional-CV-with-LaTeX)
   -  [ LaTeX Templates ](http://www.latextemplates.com/template/plasmati-graduate-cv)
   -  [ ShareLatex ](https://www.sharelatex.com/templates/cv-or-resume/professional-cv)

**Personal data** has moved on top of the first page just before the position and _[Fontin Sans](http://www.exljbris.com/fontinsans.html)_ font has been replaced by _[Source Sans Pro Font](https://github.com/adobe-fonts/source-sans-pro)_ from Adobe. _[Font Awesome](http://fontawesome.io/)_ icons are used to highlight important elements.

Unlike _Alessandro Plasmati_ CV template, all layout stuff in **Awesome Source Latex CV** has moved in the Latex class file _awesome-source-cv.cls_.

## How to use **Awesome Source CV** latex class

```latex
% Define author's name
% Usage: \name{<firstname>}{<lastname>}
% Mandatory
\name{Christophe}{ROGER}

% Define author's tagline
% Usage: \tagline{<tag line>} 
% Mandatory
\tagline{Chef de projet IT}
```

```latex
\socialinfo{
  \linkedin{christopheroger}
  \viadeo{christopheroger}
  \github{darwiin}\\
  \smartphone{+687 123 456}
  \email{christophe.roger@mail.com}\\
  \address{2 Rue du quartier, 98765 Ville, Pays}\\
  \infos{Né le 23 septembre 1982 (34 ans) à Nouméa, Nouvelle-Calédonie}
}
```

To describe your experiences you have first to declare the **experiences** environment

```latex
% Begin a new experiences environment to use experience and consultantexperience macro
\begin{experiences}

% Here's go your experiences

\end{experiences}
```

Then you can describe your experiences using **\experience** and **\consultantexperience** entries. Each
entry must be separated by the **\emptyseparator** 

```latex
% Begin a new experiences environment to use experience and consultantexperience macro
\begin{experiences}

% The experience entry work as below and can be used to describe a job experience
  \experience
    {End date}      {Experience title}{Enterprise}{Country}
    {Begin date}    {
    				  experience details
                      \begin{itemize}
                        \item Item 1: _Item 1 description_
                        \item Item 2: _Item 2 description_
                        \item Item 3: _Item 3 description_
                      \end{itemize}
                    }
                    {Technology highlights}

% The emptyseparator macro is used to create white space in your experience
  \emptySeparator

% The consultantexperience macro is very similar to the experience macro, but offer you 
% the possibility tu put client details
  \consultantexperience
    {End date}        {Experience title}{Enterprise}{Country}
    {Begin date}      {Client job title}{Clent enterprise}
                    {
                      experience details
                      \begin{itemize}
                        \item Item 1: _Item 1 description_
                        \item Item 2: _Item 2 description_
                        \item Item 3: _Item 3 description_
                      \end{itemize}
                    }
                    {Technology highlights}
\end{experiences}
```
