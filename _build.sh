#!/bin/sh

xelatex qgeissmann-cv.tex
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

