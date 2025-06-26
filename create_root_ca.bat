@echo off
mkdir root\certs root\crl root\newcerts root\private
echo 1000 > root\serial
type nul > root\index.txt

openssl genrsa -aes256 -out root\private\rootCA.key.pem 4096
openssl req -config root\openssl_root.cnf -key root\private\rootCA.key.pem -new -x509 -days 3650 -sha256 -extensions v3_ca -out root\rootCA.crt.pem
