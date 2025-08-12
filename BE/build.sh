#!/bin/bash
cd BE
git clone https://github.com/spring-petclinic/spring-petclinic-rest.git
cd spring-petclinic-rest
./mvnw package
cp target/*.jar ..
cd ..
docker build -t petclinic-backend .
#docker run --name=backend-app -d petclinic-backed
