#!/bin/bash

# uzbekpics.sh: Scrapes images at yande.re,konachan.com

#read -p "Enter the tag: " TAG

HARDCODED_RATING=+-rating%3Asafe
YANDERE_URL="https://yande.re"
KONACHAN_URL="https://konachan.com"
API_QUERY="/post.json?tags="

if [ -z "$1" ]; then
 # No tag specified.
  echo "Usage: `basename $0` tag"
  exit 1
fi

TAG=$1

#if [ -z "$TAG" ]; then
 # No tag specified.
  #echo "A tag is required."
  #exit 1
#fi

# Create directory for the images
mkdir -p "yandere_$TAG"
mkdir -p "konachan_$TAG"

# Download the image
curl -s "${YANDERE_URL}${API_QUERY}${TAG}${HARDCODED_RATING}" | jq -r '.[].jpeg_url' | aria2c -i- -d "yandere_$TAG" && curl -s "${KONACHAN_URL}${API_QUERY}${TAG}" | jq -r '.[].jpeg_url' | aria2c -i- -d "konachan_$TAG"
