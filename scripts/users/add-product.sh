API="http://localhost:4741"
URL_PATH="/add-product"
TOKEN="V8MMSykI3dIpKnquDyQ/uLoxu2mnXq6/vgB+ZBq1j1w=--g0tdfOBCMd5pfKmeCGvZCiAkCWSegzZPNrU9jj4H1yI="
ID="5a00b2a0a97ebe7e18ca40e3"
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
