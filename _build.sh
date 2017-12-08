#!/bin/sh

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
# pdflatex qgeissmann-cv.tex
