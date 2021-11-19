@echo off
call mvn clean package
call docker build -t com.emsi.coteazure/tpPrg .
call docker rm -f tpPrg
call docker run -d -p 9080:9080 -p 9443:9443 --name tpPrg com.emsi.coteazure/tpPrg