

kubectl create configmap zookeeper-ensemble-config --from-env-file=configmap/zookeeper-ensemble-config.properties 


kubectl get configmap 

kubectl apply  -f aks/storageclass-zkensemble.yml 
kubectl apply -f aks/storageclass-azurefile.yml 

kubectl get storageclass 

kubectl apply -f aks/service-zookeeper-ensemble.yml 

kubectl get service 

kubectl apply -f statefulsets/statefulset-zookeeper-ensemble.yml

kubectl get statefulsets 


###wait untill all zookeeper pods are up

kubectl create configmap solr-cluster-config --from-env-file=configmap/solr-cluster-config.properties 


kubectl get configmap -n solr-qa

kubectl create -f aks/storageclass-solrcluster.yml

kubectl get storageclass -n solr-qa

kubectl apply -f aks/service-solr-cluster.yml 

kubectl get service -n solr-uat

kubectl apply -f statefulsets/statefulset-solr-cluster.yml

kubectl get statefulsets -n solr-qa
