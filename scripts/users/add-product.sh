API="http://localhost:4741"
URL_PATH="/add-product"
TOKEN="sdfLksbnzK/CdoZGyyL1se3JAN0WD9Ed5UVnBkhsBXQ=--kf6tR25guUE8oiSiHySjyOxnUQjU6r+kbydNKrDUsJ8="
ID="5a007a590c7cf6e565112680"
NAME="Refridgerator door"
DESCRIPTION="test "
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
