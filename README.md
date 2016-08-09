latex-classicalcv
=================

Latex CV based on CV template created by Alessandro Plasmati. The original templates utilizes _XeLaTeX_ engine and _Fontin_ font. 
More informations can be found here :

   -  [ Scribd ](http://fr.scribd.com/doc/16335667/Writing-your-Professional-CV-with-LaTeX)
   -  [ LaTeX Templates ](http://www.latextemplates.com/template/plasmati-graduate-cv)
   -  [ ShareLatex ](https://www.sharelatex.com/templates/cv-or-resume/professional-cv)

I choose to move _Personal data_ have on top of the page just before the professional title. I've also replaced default font by _Helvetica Neue_ 
and included _Font Awesome_ items.

I've chosen to cut my resume in a couple of smaller files and to add some macro to make the main latex source code more readable. 

```latex
\user{firstname}{LASTNAME}
\linkedin{{link}{Link Description}}
\address{12, Dummy Road, 000000, Dummy Country}
\infos{Dummy infos (birthday, etc...)}
\smartphone{+687 000 000}
\email{mail@dummy-mail.com}
```

The experices section has to follow this template: 

```latex
% Begin a new experiences environment to use experience and consultantexperience macro
\begin{experiences}

% The experience macro work as below and can be used to describe a job experience
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

Another macro has been set to perform conditional include. You have to put \demotrue or \demofalse once in your file to use \conditionalinput macro
