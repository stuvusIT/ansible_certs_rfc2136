#!/bin/bash

set -eo pipefail

cd /etc/lego/certificates

mkdir $LEGO_CERT_DOMAIN
chmod 755 $LEGO_CERT_DOMAIN
cd $LEGO_CERT_DOMAIN

ln -s $LEGO_CERT_PATH $LEGO_CERT_DOMAIN.crt
chmod 755 $LEGO_CERT_DOMAIN.crt

ln -s $LEGO_CERT_KEY_PATH $LEGO_CERT_DOMAIN.key
chmod 755 $LEGO_CERT_DOMAIN.key
