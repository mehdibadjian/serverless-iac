#!/bin/bash

if [ "$1" == "aws" ]; then
  serverless deploy --config aws/serverless.yml
elif [ "$1" == "azure" ]; then
  serverless deploy --config azure/serverless.yml
elif [ "$1" == "gcp" ]; then
  serverless deploy --config gcp/serverless.yml
else
  echo "Please specify a cloud provider: aws, azure, or gcp"
fi
