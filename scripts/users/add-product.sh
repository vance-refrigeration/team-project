API="http://localhost:4741"
URL_PATH="/add-product"
TOKEN="gxkegGpT2r6FgbthQqqbUNWmhxYB9isp/34l7xi4Onc=--HoYOZekR5Ex+dvNcBRMwqYVzWb4qMzFnkG6Y+6W/Dww="
ID="5a00d8e371e7dd36fded3def"
NAME="test 4"
DESCRIPTION="test 4"
PRODUCTID='123456'
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
