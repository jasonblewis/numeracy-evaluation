#!/bin/bash

#build test-1 with answers
pdflatex "\def\showanswers{1}\input{maths-1.tex}" && cp maths-1.pdf ../maths-1-answers.pdf
# build test-1 without answers
pdflatex "\input{maths-1.tex}" && cp maths-1.pdf ../maths-1.pdf


#build maths-2 with answers
pdflatex "\def\showanswers{1}\input{maths-2.tex}" && cp maths-2.pdf ../maths-2-answers.pdf
# build test-1 without answers
pdflatex "\input{maths-2.tex}" && cp maths-2.pdf ../maths-2.pdf
