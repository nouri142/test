#!/bin/bash
cd /var/jenkins_home/workspace/petsclinic/FE
git clone https://github.com/spring-petclinic/spring-petclinic-angular
cd spring-petclinic-angular
npm install -y
npm run build -y
cp -r dist ..
cd ..
docker build -t petclinic-frontend .



