YAAC: Another Awesome CV [![CircleCI](https://circleci.com/gh/darwiin/yaac-another-awesome-cv.svg?style=svg)](https://circleci.com/gh/darwiin/yaac-another-awesome-cv) [![Example](https://img.shields.io/badge/Exemple-pdf-blue.svg)](https://github.com/darwiin/yaac-another-awesome-cv/releases/download/v1.7.0/cv.pdf)
=================

## Quick start

You can edit online **YAAC: Another Awesome CV** template on [Overleaf](https://www.overleaf.com/latex/templates/awesome-source-cv/wrdjtkkytqcw). Feel free to use my [referal link](https://www.overleaf.com/signup?ref=54c221604cd6) if you want to create your account.

## About

**YAAC: Another Awesome CV** was first based on a CV template from Alessandro Plasmati. This template used _XeLaTeX_ engine and _[Fontin Sans](http://www.exljbris.com/fontinsans.html)_ font. 

**Personal data** has moved on top of the first page just before the position and _[Fontin Sans](http://www.exljbris.com/fontinsans.html)_ font has been replaced by _[Source Sans Pro Font](https://github.com/adobe-fonts/source-sans-pro)_ from Adobe. _[Font Awesome](http://fontawesome.io/)_ icons highlight important elements.

Unlike _Alessandro Plasmati_ CV template, all layout stuff in **YAAC: Another Awesome CV** has moved in the Latex class file _yaac-another-awesome-cv.cls_ to improve source code readability and style reusability.

More informations about the original Alessandro Plasmati template can be found here :

   -  [ Scribd ](http://fr.scribd.com/doc/16335667/Writing-your-Professional-CV-with-LaTeX)
   -  [ LaTeX Templates ](http://www.latextemplates.com/template/plasmati-graduate-cv)
   -  [ ShareLatex ](https://www.sharelatex.com/templates/cv-or-resume/professional-cv)

## How to use **YAAC: Another Awesome CV** latex class

### Use the **YAAC: Another Awesome CV** options

When declaring the `\documentclass` you can use option(s) to customize your CV rendering.

```latex
% Used with no option, the template will use the 'traditional' 
% header layout your system fonts and the default color scheme ie. blue
\documentclass{yaac-another-awesome-cv}

% Used with localFont option the template will use the 'traditional' 
% header layout, fonts included in the fonts directory and the default color scheme
\documentclass[localFont]{yaac-another-awesome-cv}

% Used with localFont option, the template will use the 'alternative' 
% header layout, your system fonts and the default color scheme
\documentclass[alternative]{yaac-another-awesome-cv}

```

### Construct the header

Outside of the `\socialinfo` wrapper you have to define the mandatory parameters `\name` and `\tagline`.

```latex
% Define author's name
% Usage: \name{<firstname>}{<lastname>}
% Mandatory
\name{Christophe}{ROGER}

% Define author's photo (optional)
% Usage \photo{<diameter>}{<photo>}
\photo{2.5cm}{darwiin}

% Define author's tagline
% Usage: \tagline{<tag line>} 
% Mandatory
\tagline{Chef de projet IT}
```

Most social network have their command to render a clickable link or a simple text entry.

```latex
% Render author's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\linkedin{christopheroger}

% Render author's viadeo(optional)
% Usage: \viadeo{<viadeo-nick>}
\viadeo{christopheroger}

% Render author's github (optional)
% Usage: \github{<github-nick>}
\github{darwiin}

% Render author's email (optional)
% Usage: \email{<email adress>}
\email{christophe.roger@mail.com}
```

Put these command in the `\socialinfo` wrapper. Feel free to add `\\` when you want to force a new line.

```latex
\socialinfo{
  \linkedin{christopheroger}
  \viadeo{christopheroger}
  \github{darwiin}\\
  \smartphone{+687 123 456}
  \email{christophe.roger@mail.com}\\
  \address{2 Rue du quartier, 98765 Ville, Pays}\\
  \infos{Né le 23 septembre 1982 (35 ans) à Nouméa, Nouvelle-Calédonie}
}
```

Use the `\makecvheader`command to generate the header.

```latex
\makecvheader
```

### Construct the _experiences_ section

To describe your experiences you have first to declare the `experiences` environment

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

### Construct the _languages_ section

The _languages_ section use the **skills** environment. 

```latex
% Begin a new skills environment and fill it with skill entries
  \begin{skills}

% Render a skill in the skills environment
% Usage: \skill{<skill>}{<level between 1 and 5>}
    \skill{Français}{5}
    \skill{Anglais}{4}

% End the skills environment    
  \end{skills}
```

### Construct the _scolarship_ section

The _scolarship_ section ise the **scolarship** environment.

```latex
  \begin{scholarship}

% Render a scholarshipentry in the scolarship environment
% Usage: \scholarshipentry{<date>}{<description>}
    \scholarshipentry{2007}
          {Master STIC Professionel filière MBDS de l'Université de Nice Sophia Antipolis (Master Informatique spécialité Multimédia, Base de Données et intégration de Systèmes)}
    \scholarshipentry{2005}
          {Licence Sciences et Technologies, Mention Informatique, de l'Université de Nouvelle-Calédonie}
  \end{scholarship}
```

## License

Latex class file _yaac-another-awesome-cv_ is published under the term of the [LPPL Version 1.3c](https://www.latex-project.org/lppl.txt).

All content files are published under the term of the [CC BY-SA 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/legalcode).