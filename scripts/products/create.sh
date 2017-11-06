# NAME=Refridgerator DESCRIPTION="Great, awesome, fridge" PRICE=100 sh scripts/products/create.sh
# NAME="Ice Cube Trays" DESCRIPTION="Freezes water" PRICE=10 sh scripts/products/create.sh
# NAME=Filters DESCRIPTION="Pretty sweet filters" PRICE=5 sh scripts/products/create.sh
# NAME=Refridgerator DESCRIPTION="Great, awesome, fridge" PRICE=100 sh scripts/products/create.sh


API="http://localhost:4741"
URL_PATH="/products"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
