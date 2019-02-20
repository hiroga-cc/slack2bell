BUCKET_NAME=$1
S3_BUCKET=s3://${BUCKET_NAME}
# aws s3 mb ${S3_BUCKET}
aws configure list
aws s3 sync bell/ ${S3_BUCKET} --acl public-read
aws s3 website ${S3_BUCKET} --index-document index.html
echo "https://s3.amazonaws.com/${BUCKET_NAME}/index.html"
