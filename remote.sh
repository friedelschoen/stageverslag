#!/bin/sh

files="stageverslag.md template.tex prefix.tex apa-citation.csl bibliography.bib build.sh"
host=friedel@friedelschoen.io
port=3875

# upload changes
rsync -ve "ssh -p $port" $files $host:stageverslag/

#exec ssh -p $port $host stageverslag/build.sh -s -t latex
exec ssh -p $port $host stageverslag/build.sh $@ > stageverslag.pdf