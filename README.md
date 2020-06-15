# cnlogo #

## Installation ##

### Tex Live ###

#### Windows OS ####

##### Version #####

10

##### Operation #####

1.  `cd .. | move cnlogo "D:\Program Files\texlive\texmf-local\tex\latex\local"`
2. `texhash`
** Refer [See here](https://www.cnblogs.com/arsh/p/11319467.html) **

##### NOTE #####

1. I don't gurantee your texlive installation path is `D:\Program
   Files\texlive`.
2. You maybe wait a little long time after Regenerate filename datebase.
3. If you think installation is troublesome, you can directly put this package
   in the directoy with your `main.tex`.

#### Other OS ####

Please `google`.

### MikTex ###

** Refer [See here](https://blog.csdn.net/znzhizs/article/details/82493001) **

## Usage ##

### LaTex ###

[See here](ceshi.pdf)

## Development ##

### Independency ###

1. `Inkscape`
2. `inkscape2tikz` or `svg2tikz`.

You can `google` to know how to install them. Such as [See
here](https://blog.csdn.net/ouening/article/details/82928140)

##### Operation #####

1. Download a `foobar.pdf` from your university website.
You can move
   it to `D:\Program Files\texlive\texmf-local\tex\latex\local\cnlogo\picture\abbreviatation_of_university.pdf`
2. Use `Inkscape` to open `abbreviatation_of_university.pdf`.
3. Save as `abbreviatation_of_university.svg`.
4. Extensions > Export > Export to tikz.
5. `move "D:\Program Files\Inkscape\share\extensions\abbreviatation_of_university.tex" "D:\Program
   Files\texlive\texmf-local\tex\latex\local\cnlogo\cnlogo\abbreviatation_of_university.tex"`
6. Update `abbreviatation_of_university.tex`. Refer other file.
6. Update `../cnlogo.sty`. Refer other line.

###### Update `abbreviatation_of_university.tex` ######

1. Update `\definecolor{abbreviatation_of_university}{RGB}{227,0,22}`.
2. Add `\NewDocumentCommand\abbreviatation_of_universitywhole{O{abbreviatation_of_university}O{abbreviatation_of_university}O{1}}{` and `}`
3. Add `\begin{tikzpicture}[y=0.80pt,x=0.80pt,yscale=-1, inner sep=0pt, outer sep=0pt,scale=#3]`
4. Update `#1`.
5. ...

###### Update `../cnlogo.sty` ######

1. Add
```
\DeclareOption{abbreviatation_of_university}{%
\input{cnlogo/abbreviatation_of_university}
}
```
** Please rank in alphabetical order**

###### Merge Your Pull Request ######

[See here](https://guides.github.com/activities/hello-world/)

## Log ##

2020.1.2 Add README.md

