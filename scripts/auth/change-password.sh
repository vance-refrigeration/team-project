#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
TOKEN="2qMK1NITh5UhzzAu0If1tEHjFC1h7/c9POsZeleLTqI=--69ZWHJ+6WBxp/nyQloGWcc6lHoMdUj4crd8ulYlTLR4="
OLDPW="abc"
NEWPW="123"
ID="5a007723fc9e62e37fb91d25"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
