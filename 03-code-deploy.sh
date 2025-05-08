source ./env.sh

# usage: ./03-code-deploy.sh

# This script creates a Lambda function using the AWS CLI

# read role ARN from file
ROLE_ARN=$(<$ROLE_ARN_FILE)

aws lambda create-function \
    --function-name $LAMBDA_NAME \
    --runtime python3.8 \
    --zip-file fileb://$LAMBDA_ZIP \
    --handler hello.lambda_handler \
    --role $ROLE_ARN