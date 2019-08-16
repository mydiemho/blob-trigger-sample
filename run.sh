#!/bin/bash

export CONNECTION_STRING="DefaultEndpointsProtocol=http;AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;BlobEndpoint=http://127.0.0.1:10000/devstoreaccount1"
export CONTAINER="blob-samples"

echo "Uploading file to blob container ${CONTAINER}"

az storage container create --connection-string ${CONNECTION_STRING} -n ${CONTAINER}
az storage blob upload --connection-string ${CONNECTION_STRING} -c ${CONTAINER} -f sample.json -n sample.json