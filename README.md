latex-classicalcv
=================

Latex CV based on CV template created by Alessandro Plasmati. The original templates utilizes XeLaTeX engine and Fontin font. 
More informations can be found here
- http://fr.scribd.com/doc/16335667/Writing-your-Professional-CV-with-LaTeX
- http://www.latextemplates.com/template/plasmati-graduate-cv
- https://www.sharelatex.com/templates/cv-or-resume/professional-cv

In my version, Personal data have moved on top of the page just before the professional title.


I have also created little Latex macros to make easier and cleaner Latex source code

```TeX
\user{firstname}{LASTNAME}
\linkedin{{link}{Link Description}}
\address{12, Dummy Road, 000000, Dummy Country}
\infos{Dummy infos (birthday, etc...)}
\smartphone{+687 000 000}
\email{mail@dummy-mail.com}
```

Another macro has been set to perform conditional include. You have to put \demotrue or \demofalse once in your file to use \conditionalinput macro

```TeX
%These two lines will include section_references_demo
\demotrue
\conditionalinput{section_references_demo}{references}

%These two lines will include references
\demotrue
\conditionalinput{section_references_demo}{references}
```
