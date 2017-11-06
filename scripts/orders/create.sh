API="http://localhost:4741"
URL_PATH="/orders"
TOKEN="V8MMSykI3dIpKnquDyQ/uLoxu2mnXq6/vgB+ZBq1j1w=--g0tdfOBCMd5pfKmeCGvZCiAkCWSegzZPNrU9jj4H1yI="
PRODUCTID="123456"


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
