#!/bin/sh

cd `dirname $0` 
exec pandoc stageverslag.md -s \
    -t pdf \
    --template=template.tex \
    --pdf-engine=lualatex \
    --bibliography=bibliography.bib \
    --csl=apa-citation.csl \
    --citeproc \
    $@