# CA_using_OpenSSL
This contains a list of commands in order to locally create a CA with a chain of trust structure. 


File system created  after the codes are executed :  
CA/
├── root/
│   ├── certs/
│   ├── crl/
│   ├── newcerts/
│   ├── private/
│   ├── rootCA.key.pem
│   ├── rootCA.crt.pem
│   ├── index.txt
│   ├── serial
│   └── openssl_root.cnf
├── intermediate/
│   ├── certs/
│   ├── crl/
│   ├── csr/
│   ├── newcerts/
│   ├── private/
│   ├── intermediateCA.key.pem
│   ├── intermediateCA.crt.pem
│   ├── index.txt
│   ├── serial
│   └── openssl_intermediate.cnf
├── certs/
│   ├── server.key.pem
│   ├── server.csr.pem
│   └── server.crt.pem
├── create_root_ca.bat
├── create_intermediate_ca.bat
└── create_server_cert.bat
