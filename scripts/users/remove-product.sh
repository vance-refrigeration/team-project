API="http://localhost:4741"
URL_PATH="/remove-product"
TOKEN="weDXuLMrcmKMbcCXeF2eGf6zPTzw/haiqGzq1gmPYls=--y84ySdhqhKrexMxl5SD97PHH6e5LDkDGay2o2tjPIJk="
ID="5a0090ded6e63ceff2f87d5b"
PRODUCTID='123456'

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "_id": "'"${PRODUCTID}"'"
    }
  }'

echo
