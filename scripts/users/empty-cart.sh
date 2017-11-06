API="http://localhost:4741"
URL_PATH="/empty-cart"
TOKEN="c0mzk7P6dJ6U8jrDzouOE/q5uCrPjlrqqq8RW1slXPQ=--AZl5WIfTpgDvWSn8hXqSGRCrJ4Q0aKH9PNx6oyEGPB0="
ID="5a00b2a0a97ebe7e18ca40e3"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json"

echo
