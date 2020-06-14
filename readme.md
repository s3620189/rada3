# ACME App

To stand up the kubernetes cluster go into the `environment` directory and follow the directions in the make file

go to environment
cd environment
make init
make kube-up

go to infro
cd infro
//use command
make up
we have namespaces test and prod
use -n test or -n prod to switch different namespaces
use command:
//go to helm folder
cd helm
//package app
helm package as3
//upgrade app
helm upgrade as3 ./as3-0.1.0.tgz -n test
//see pods
kubectl get pods -n test
//get service
kubectl get service -n test
//copy address to browser then we can see the app

//after use terraform, use command
cd infra
make down

In circle ci we have fows : deploy-test and deploy-prod



