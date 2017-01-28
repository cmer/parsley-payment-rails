#!/bin/sh

set -e

if [ $# -eq 0 ]; then
  echo "No tag supplied. Usage: ./update.sh v2.0.0-rc5"
  exit 1
fi

TAG=$1
EXTRACT_DIRECTORY="/tmp/$$$(date "+%Y%m%d%H%M%S")"
FILE_NAME="$EXTRACT_DIRECTORY.tar.gz"
RELEASE_URL="https://github.com/cmer/parsley-payment/archive/$TAG.tar.gz"
RELEASE_PATH="$EXTRACT_DIRECTORY/parsley-payment-$TAG"

VENDOR_JS_PATH="vendor/assets/javascripts"
VENDOR_CSS_PATH="vendor/assets/stylesheets"

wget -O $FILE_NAME $RELEASE_URL
mkdir $EXTRACT_DIRECTORY
tar xfz $FILE_NAME -C $EXTRACT_DIRECTORY

cp "$RELEASE_PATH/dist/parsley-payment.js" $VENDOR_JS_PATH

rm -rf $FILE_NAME $EXTRACT_DIRECTORY
