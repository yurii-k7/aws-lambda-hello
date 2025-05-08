source ./env.sh

# usage: ./01-role-create.sh

# This script creates a role for the Lambda function
# and stores the ARN of the role in a file called role-arn.txt.

aws iam create-role \
    --role-name $LAMBDA_NAME \
    --assume-role-policy-document file://role-trust-policy.json \
    --max-session-duration 3600 \
    --query Role.Arn --output text > $ROLE_ARN_FILE


echo "sleeping for 10 seconds to allow the role to propagate"
sleep 10