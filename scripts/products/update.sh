# ID=5a007961d72d2e714a0ab5d7 NAME="Ice Cube Trays" DESCRIPTION="Freezes water really well" PRICE=10 sh scripts/products/update.sh

API="http://localhost:4741"
URL_PATH="/products"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
