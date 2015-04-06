#!/bin/bash

#deployment + pdf-ization of resumes

if [ -d "$1" ]; then
    cd $1
    for localization in fr en; do
        echo "Generating pdf for lang ${localization}"
        wkhtmltopdf ./cv_${localization}.html ./cv_mbahier_${localization}.pdf
    done
    cd -
else 
    echo "You need to specify a valid directory to switch to"
    echo "Usage : ./generatePdfs.sh ./someDirectory"
fi
