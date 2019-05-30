#!/bin/bash

# requires latexmk - check it exists.
if ! hash latexmk 2>/dev/null
then
    echo 'ERROR: requires latexmk'
    exit 1
fi

build () {
    # build with answers
    ANSWERS='\def\showanswers{1}' latexmk -gg -pdf -shell-escape "$1".tex && cp "$1".pdf "$1"-answers.pdf
    # build  without answers
    latexmk -gg -pdf -shell-escape "$1".tex 
}

#build test-1 with and without answers
build "maths-1"

#build test-2 with and without answers
build "maths-2"

