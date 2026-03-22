#!/bin/bash

# scraper.sh: Scrapes images at yande.re

#read -p "Enter the tag: " TAG

HARDCODED_RATING=+-rating%3Asafe
API_URL="https://yande.re/post.json?tags="

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

# TODO
# Vibe-coded logic (needs check)
#IMAGE_URLS=$(curl -s "${API_URL}${TAG}${HARDCODED_RATING}" | jq -r '.[].jpeg_url')

#if [ -z "$IMAGE_URLS" ]; then
  #echo "No images found."
  #exit 0
#fi

#echo "$IMAGE_URLS" | while read -r url; do
    #aria2c "$url"
#done
