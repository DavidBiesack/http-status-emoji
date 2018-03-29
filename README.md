## http-status-emoji

Why reply on Slack with just "*ok*" when you can reply with ![200 OK](gen/200.png "200 OK") instead!

This project contains script to generate HTTP status code icons or emoji; useful for uploading to
a Slack instance if you are geek/API/REST/HTTP inclined.

The script is a bash sell script, `gen-status-code-icons.sh`. Run it to generate the icons in `gen`.
`png` generation only works on Mac OS X where the `rsvg-convert` tool exists. This tool could be enhanced to use another tool.

The templates (`2xx.svg`, `4xx.svg`, `5xx.svg`) were derived from [rest-codes](https://github.com/ahmadnassri/rest-codes) plastic theme (ISC license); I tweaked them to make the text larger and aligned better.

