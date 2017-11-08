API="http://localhost:4741"
URL_PATH="/add-product"
TOKEN="wE+y50fXVkjwa7Zf7LzwLTvTEbC2zHMiUoNcMjQcUGU=--bqUXzZtsAjcredQEaTmHke6VHMgyz9ePCfbiPBf2HKY="
ID="5a01c0d3bab8e91f5ab37eb7"
NAME="testcart2"
DESCRIPTION="testcart2"
PRODUCTID='ABCDEF'
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
      "price": "'"${PRICE}"'",
      "_id": "'"${PRODUCTID}"'"
    }
  }'

echo
