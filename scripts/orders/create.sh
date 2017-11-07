API="http://localhost:4741"
URL_PATH="/orders"
TOKEN="wE+y50fXVkjwa7Zf7LzwLTvTEbC2zHMiUoNcMjQcUGU=--bqUXzZtsAjcredQEaTmHke6VHMgyz9ePCfbiPBf2HKY="
PRODUCTID="ABCDEF"


curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "orderItems": {
      "id": "'"${PRODUCTID}"'"
    }
  }'

echo
