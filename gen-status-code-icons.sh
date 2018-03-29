#!/usr/bin/env bash

# Create HTTP status icons, in svg and png format

function render {
    template=$1
    code=$2
    color=$3
    sed "s/color/$color/" < status-code.svg | sed s/xxx/$code/g >| gen/$code.svg
    rsvg-convert -h 48 gen/$code.svg >| gen/$code.png
}

# the SVG templates (2xx.svg, 4xx.svg, 5xx.svg) were derived from rest.codes,
# but modified to make the text larger so they render better in Slack
# style: plastic or rounded or flat
# image: code or square or full
# https://rest.codes/plastic/code/$code.svg

test -s gen || mkdir gen
for code in {100..103}
do
    render 1xx $code 97CA00
done

for code in {200..202} {204..208} 226
do
    render 2xx $code 4c1
done

for code in {300..308}
do
    render 3xx $code DFB317
done

for code in {400..418} {420..424} 426 428 429 431 444 451 495 496 497 499
do
    render 4xx $code FE7D37
done

for code in {500..511} {520..526} 598 599
do
    render 5xx $code E05D44
done
