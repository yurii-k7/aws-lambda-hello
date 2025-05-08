source ./env.sh

# usage: ./02-code-zip.sh

# This script creates a zip file for the Lambda function code

zip $LAMBDA_ZIP hello.py