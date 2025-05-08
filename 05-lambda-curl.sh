source ./env.sh

# usage: ./05-lambda-curl.sh

# This script invokes the Lambda function using the Function URL

LAMBDA_URL=$(<$LAMBDA_URL_FILE)

curl $LAMBDA_URL

echo ""