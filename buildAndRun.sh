#!/bin/sh
mvn clean package && docker build -t com.emsi.coteazure/tpPrg .
docker rm -f tpPrg || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpPrg com.emsi.coteazure/tpPrg