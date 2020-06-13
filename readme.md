# ACME App

To stand up the kubernetes cluster go into the `environment` directory and follow the directions in the make file

got to environment
cd environment
make init
make kube-up

we have namespaces test and prod
use -n test or -n prod to switch different namespaces
use command:
//go to helm folder
cd helm
//package app
helm package as3
//upgrade app
helm upgrade as3 ./as3-0.1.0.tgz -n prod
//see pods
kubectl get pods -n prod
//get service
kubectl get service -n prod
//copy address to browser
