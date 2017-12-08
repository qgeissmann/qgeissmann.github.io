#!/bin/sh


Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
#xelatex qgeissmann-cv.tex

