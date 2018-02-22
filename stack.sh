#!/bin/bash

create_stack () {
    echo "Creating new stack ..."
    aws cloudformation create-stack \
        --stack-name cebot \
        --template-body file://cloudformation/cebot.json \
        --parameters file://cloudformation/cebot-params.json \
        --capabilities CAPABILITY_IAM
}

update_stack () {
    echo "Updating existing stack ..."
    aws cloudformation update-stack \
        --stack-name cebot \
        --template-body file://cloudformation/cebot.json \
        --parameters file://cloudformation/cebot-params.json \
        --capabilities CAPABILITY_IAM
}

STATUS=$( aws cloudformation describe-stacks \
    --stack-name cebot \
    --query 'Stacks[].StackStatus' \
    --output text 2>/dev/null
)

case $STATUS in
    *_COMPLETE)    update_stack    ;;
    *)                  create_stack    ;;
esac
