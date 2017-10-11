#!/usr/bin/env bash

# using node library markdown-to-html
rm -f html/*.html
markdown src/cli.md --title "Ace by DAISY Documentation: CLI" -s style.css > html/cli.html
markdown src/getting-started.md --title "Ace by DAISY Documentation: Getting Started" -s style.css > html/getting-started.html
markdown src/http-api.md --title "Ace by DAISY Documentation: HTTP API" -s style.css > html/http-api.html
markdown src/index.md --title "Ace by DAISY Documentation" -s style.css > html/index.html
markdown src/report-html.md --title "Ace by DAISY Documentation: HTML Report" -s style.css > html/report-html.html
markdown src/report-json.md --title "Ace by DAISY Documentation: JSON Report" -s style.css > html/report-json.html
