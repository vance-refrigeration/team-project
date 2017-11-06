#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
TOKEN="j6YTGDEY5V3Ij7eznYbqVXFOHTs9k04rjAolR1a4p2A=--8ca59tt7IpojZWGj3P/5/SHuyhJUzeiRsiVn30DcQ1g="
ID="5a0090ded6e63ceff2f87d5b"


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
