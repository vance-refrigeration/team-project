API="http://localhost:4741"
URL_PATH="/add-product"
TOKEN="hRcVIPs2nZxkVjywNqg+/oRePl/QxiJf0QN8aSNwad8=--sTDBQAGBAYu62k0OQnv02RXtBCFUecDnpF4nMxm4CHU="
ID="5a0090ded6e63ceff2f87d5b"
NAME="test 4"
DESCRIPTION="test 4"
PRICE=100


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
