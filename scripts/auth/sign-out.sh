#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
ID="5a007723fc9e62e37fb91d25"
TOKEN="2qMK1NITh5UhzzAu0If1tEHjFC1h7/c9POsZeleLTqI=--69ZWHJ+6WBxp/nyQloGWcc6lHoMdUj4crd8ulYlTLR4="


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
