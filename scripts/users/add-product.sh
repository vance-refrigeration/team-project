API="http://localhost:4741"
URL_PATH="/add-product"
TOKEN="lhpvkLAWFbn1wsUyuwp9MNjPlkjQ3eF02LJBQgDB9/8=--oALAIc6ck7UJI9ile6sKAYr9tPuP5w7dLsrvRNtR28E="
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
