@echo off
mkdir intermediate\certs intermediate\crl intermediate\csr intermediate\newcerts intermediate\private
echo 2000 > intermediate\serial
type nul > intermediate\index.txt

openssl genrsa -aes256 -out intermediate\private\intermediateCA.key.pem 4096

openssl req -config intermediate\openssl_intermediate.cnf -new -key intermediate\private\intermediateCA.key.pem -out intermediate\csr\intermediateCA.csr.pem

openssl ca -config root\openssl_root.cnf -extensions v3_intermediate_ca -days 1825 -notext -md sha256 -in intermediate\csr\intermediateCA.csr.pem -out intermediate\intermediateCA.crt.pem -cert root\rootCA.crt.pem -keyfile root\private\rootCA.key.pem
