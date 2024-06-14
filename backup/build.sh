#!/bin/sh

cd `dirname $0` 
exec pandoc stageverslag.md -s \
    --defaults=options.yml \
    $@