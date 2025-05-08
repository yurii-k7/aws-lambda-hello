source ./env.sh

# usage: ./99-cleanup.sh

# This script cleans up the AWS resources created for the Lambda function
# It deletes the Lambda function, the IAM role, and the zip file
# It also deletes the role ARN and Lambda URL files
# It is important to run this script to avoid incurring charges for unused resources

aws lambda delete-function-url-config --function-name $LAMBDA_NAME
aws lambda delete-function --function-name $LAMBDA_NAME
aws iam delete-role --role-name $LAMBDA_NAME

rm -f $LAMBDA_ZIP
rm -f $ROLE_ARN_FILE
rm -f $LAMBDA_URL_FILE
