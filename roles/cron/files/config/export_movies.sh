#!/bin/sh
TMM_API_KEY="$(cat $HOME/.passfiles/tinymediamanager_api_key)"

curl -X POST http://127.0.0.1:7878/api/movie \
  -H "Content-Type: application/json" \
  -H "api-key: ${TMM_API_KEY}" \
  -d '{
    "action": "export",
    "scope": { "name": "all" },
    "args": { "template": "ListExampleCsv", "exportPath": "/media/movies" }
  }'
