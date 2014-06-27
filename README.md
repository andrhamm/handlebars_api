# Handlebars API

Simple API endpoint for rendering HandleBars.js templates.

## Usage

Pass a valid JSON array with the first value in the array being the template string and the second value being an hash of your template data.

    Content-Type: application/json
    Accept: text/plain
    POST /render
    ["{{say}} {{what}}", { "say": "hello", "what": "world" }]

The response body will be the plain-text output of your rendered template. The response status will be 200 on success and 500 if there was an error. The response body will be empty when there is an error, so check the status.

Response:

    hello world