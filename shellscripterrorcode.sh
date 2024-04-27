#!/bin/bash
URL="https://guvi.in"
CURL_OUTPUT=$(curl -sILk -o /dev/null -w "%{http_code} %{url_effective}" "$URL")
HTTP_CODE=$(echo "$CURL_OUTPUT" | awk '{print $1}')
FINAL_URL=$(echo "$CURL_OUTPUT" | awk '{print $2}')
if [ -n "$HTTP_CODE" ]; then
  if [ "$HTTP_CODE" -eq 200 ]; then
    echo "Success! The website $FINAL_URL is accessible with HTTP code $HTTP_CODE."
  else
    echo "Failure! The website $FINAL_URL returned an HTTP code $HTTP_CODE."
  fi
else
  echo "Failed to retrieve HTTP code. Check the URL and network connection."
fi
