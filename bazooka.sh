#!/bin/bash
echo "Enter language or command line program"
TOKEN=$(gum input --placeholder "Language or command")
echo ">"  $TOKEN

echo "Enter your query"
QUERY=$(gum input --placeholder "Your Query")
echo ">"  $QUERY

QUERY_STRING=$(echo $QUERY | sed "s/ /+/g")
curl cheat.sh/$TOKEN/$QUERY_STRING
