#!/bin/bash

#deployment + pdf-ization of resumes

for localization in fr en; do
    wkhtmltopdf ./cv_${localization}.html ./cv_mbahier_${localization}.pdf
done
