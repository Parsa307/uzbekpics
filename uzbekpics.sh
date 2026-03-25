#!/bin/bash

# uzbekpics.sh: Scrapes images at yande.re

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

# Create directory for the images
mkdir -p "$TAG"

# TODO
# Vibe-coded logic (needs check)
#curl -s "${API_URL}${TAG}${HARDCODED_RATING}" | jq -r '.[].jpeg_url' | aria2c -i- -d "$TAG"
