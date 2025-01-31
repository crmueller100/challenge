#!/bin/bash

download_and_extract() {
  local url="$1"
  local output_file="$2"

  wget -q "$url" -O - | gunzip > "$output_file"
  chmod +x "$output_file"
}

mkdir -p "data"
download_and_extract "https://fetch-hiring.s3.amazonaws.com/analytics-engineer/ineeddata-data-modeling/receipts.json.gz" "data/receipts.json"
download_and_extract "https://fetch-hiring.s3.amazonaws.com/analytics-engineer/ineeddata-data-modeling/brands.json.gz" "data/brands.json"

# the users.json file is corrupted when using wget, so retrieve manually
# download_and_extract "https://fetch-hiring.s3.amazonaws.com/analytics-engineer/ineeddata-data-modeling/users.json.gz" "data/users.json"



