source ./env.sh

# usage: ./04-lambda-add-url.sh

# This script creates a Lambda function URL and allows public access to it

aws lambda create-function-url-config --function-name $LAMBDA_NAME --auth-type NONE --query 'FunctionUrl' --output text > $LAMBDA_URL_FILE
aws lambda add-permission --function-name $LAMBDA_NAME --statement-id "FunctionURLAllowPublicAccess" --action "lambda:InvokeFunctionUrl" --principal "*" --function-url-auth-type NONE