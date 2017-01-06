#!/bin/bash
# run like: ./new-post.sh "Title Here" or ./new-post.sh Title Here
TITLE="${@}"
FILE="$(echo "$TITLE" | tr " " "-")"
FILE="_posts/$(date +"%Y-%m-%d")-$FILE.md"

echo "---" >> $FILE
echo "layout: post" >> $FILE
echo "title: $TITLE" >> $FILE
echo "category: articles" >> $FILE
echo "---" >> $FILE
echo "" >> $FILE

