#/bin/bash

while IFS= read -r line
do
  curl -H "Content-Type: text/plain" -XPUT '35.234.167.199:7000' -d "$line"
  sleep 1
done < ej2_logs.txt