#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
TOKEN="c0mzk7P6dJ6U8jrDzouOE/q5uCrPjlrqqq8RW1slXPQ=--AZl5WIfTpgDvWSn8hXqSGRCrJ4Q0aKH9PNx6oyEGPB0="
ID="5a00b2a0a97ebe7e18ca40e3"


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
