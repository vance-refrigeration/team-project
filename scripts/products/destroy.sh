# ID=5a007b8654f3ad721bd693da sh scripts/products/destroy.sh

API="http://localhost:4741"
URL_PATH="/products"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE

echo
