#! /bin/bash

rm -rf *.bbl *.aux *.fls *.blg *.lof *.log *.lot *.nlo *.out *.toc *.fdb_latexmk *.xml *.bcf *.bib *.nls *.ilg *.nlg *.fls *.xdv *.glg *.glo *.gls *.glsdefs *.his-glo *.ist *.slg *.sot *.stn *.acn *.alg *.acr *.est-glo

find . -name "*.aux" -type f -delete
find . -name "__latexindent_temp.tex" -type f -delete

