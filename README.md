
# FEM PhD and Msc LaTeX template

[![Build Status](https://travis-ci.org/felipecastrotc/fem-thesis-template.svg?branch=master)](https://travis-ci.org/felipecastrotc/fem-thesis-template) ![Version: 1.0.0](https://img.shields.io/badge/version-1.0.0-brightgreen.svg) [![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A LaTeX PhD thesis and Master dissertation template for School of Mechanical Engineering of University of Campinas.


## Author(s)
* Felipe de Castro Teixeira Carvalho


## Features

* Conforms to the Student PhD thesis and Master dissertation guidelines

* Supports LaTeX and XeLaTeX

* Print / On-line version: Different layout and hyper-referencing styles

* Pre-defined and custom fonts (Times / Fourier / Latin Modern) with math support

* Supports system fonts (XeLaTeX)


## Usage details

Thesis information such as title, author, year, degree, etc., and other meta-data can be modified in `thesis-info.tex`


## Building your thesis - XeLaTeX

This template supports `XeLaTeX`.

### Using latexmk 

To generate PDF using the `latexmk` run:

```bash
    latexmk -xelatex thesis.tex
```

###  LaTeX compilation chain

To generate PDF using a manual compilation run:

```bash
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape thesis.tex
    bibtex thesis
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape thesis.tex
    makeindex thesis.nlo -s nomencl.ist -o thesis.nls -t thesis.nlg
    xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape thesis.tex
```

## Building your thesis - LaTeX / PDFLaTeX

This template supports `PDFLaTeX`.

### Using latexmk 

To generate PDF using the `latexmk` run:

```bash
    latexmk -pdf thesis.tex
```

###  LaTeX compilation chain

To genrate PDF using a manual compilation run:

```bash
    pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape thesis.tex
    bibtex thesis
    pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape thesis.tex
    makeindex thesis.nlo -s nomencl.ist -o thesis.nls -t thesis.nlg
    pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape thesis.tex
```

##  Clean unwanted files (Linux/MacOS)

To clean unwanted LaTeX auto-generated files run:

```bash
    ./util.sh
```