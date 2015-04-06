#!/bin/bash

#deployment + pdf-ization of resumes

wkhtmltopdf ./cv_fr.html cv_mbahier_fr.pdf

for localization in fr en; do
    wkhtmltopdf ./cv_${localization}.html ./cv_mbahier_${localization}.pdf
done
