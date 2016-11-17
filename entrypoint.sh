#!/bin/sh -e

cd /etc/flocker

flocker-ca initialize cluster
flocker-ca create-control-certificate cluster
mv -v control-cluster.crt control-service.crt
mv -v control-cluster.key control-service.key

chmod -v 0700 /etc/flocker
chmod -v 644 *.crt
chmod -v 0600 /etc/flocker/control-service.key

echo 'flocker pki initialisation complete.'
