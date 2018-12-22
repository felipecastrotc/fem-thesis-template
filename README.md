
# FEM PhD and Msc LaTeX template

![Version: 1.0.0](https://img.shields.io/badge/version-1.0.0-brightgreen.svg) [![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

> A LaTeX PhD thesis and Master dissertation template for School of Mechanical Engineering of University of Campinas.


## Author(s)
*   Felipe de Castro Teixeira Carvalho

--------------------------------------------------------------------------------
## Features

* Conforms to the Student PhD thesis and Master dissertation guidelines

* Supports LaTeX and XeLaTeX

* Print / On-line version: Different layout and hyper-referencing styles

* Pre-defined and custom fonts (Times / Fourier / Latin Modern) with math support

* Supports system fonts (XeLaTeX)

-------------------------------------------------------------------------------

## Usage details

Thesis information such as title, author, year, degree, etc., and other meta-data can be modified in `thesis-info.tex`

--------------------------------------------------------------------------------

## Building your thesis - XeLaTeX

### Using latexmk (Unix/Linux/Windows)

This template supports `XeLaTeX` compilation chain. To generate  PDF run:

```bash
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf shell-escape thesis.tex
    bibtex thesis
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf shell-escape thesis.tex
    makeindex thesis.nlo -s nomencl.ist -o thesis.nls -t thesis.nlg
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf shell-escape thesis.tex
```

## Building your thesis - LaTeX / PDFLaTeX

### Using latexmk (Unix/Linux/Windows)

This template supports `PDFLaTeX`. To genrate PDF run:

```bash
    pdflatex -f -synctex=1 -interaction=nonstopmode -file-line-error -pdf shell-escape thesis.tex
    bibtex thesis
    pdflatex -f -synctex=1 -interaction=nonstopmode -file-line-error -pdf shell-escape thesis.tex
    makeindex thesis.nlo -s nomencl.ist -o thesis.nls -t thesis.nlg
    pdflatex -f -synctex=1 -interaction=nonstopmode -file-line-error -pdf shell-escape thesis.tex
```

##  Clean unwanted files

To clean unwanted clutter (all LaTeX auto-generated files), run:

```
    util.sh
```