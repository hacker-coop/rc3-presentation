# !/bin/bash
#
# author: therojam
# authoremail: github@therojam.tech
#
# Create PDF from LaTex file.
#
# usage: create-presentation.sh <output.format>

outformat=$1

if [[ $outformat == "html" ]]; then
  # 1. generate presenation
  pandoc presentation.md --pdf-engine xelatex -t beamer -o presentation.pdf
  # 2. rename CV-DE.pdf to pdf with With Date
  mv presentation.pdf $(date +%Y-%m)-rc3presentation.pdf
 
elif [[ "$OSTYPE" == "pdf" ]]; then
  # 1. generate presenation
  pandoc presentation.md --pdf-engine xelatex -t beamer -o presentation.pdf
  # 2. rename CV-DE.pdf to pdf with With Date
  mv presentation.pdf $(date +%Y-%m)-rc3presentation.pdf
else
  echo "Your OperatingSystem is either linux or MacOS and not supported by this Script ..."
  exit 0
fi


