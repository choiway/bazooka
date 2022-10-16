#!/bin/bash
echo "Enter language or command line program"
TOKEN=$(gum input --placeholder "(vim)")
echo ">"  $TOKEN

echo "Enter your query"
QUERY=$(gum input --placeholder "How do I exit")
echo ">"  $QUERY

QUERY_STRING=$(echo $QUERY | sed "s/ /+/g")
curl cheat.sh/$TOKEN/$QUERY_STRING
