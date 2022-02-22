# Helm Chart to deploy sample application on Kubernetes Cluster
The helm chart sample-app deploys a nginx application as a Kubernetes deployment with the custom configuration as a configmap that is mounted to the deployment object.
The application is accesible using NodePort service object.

#### Commands to deploy the objects using Helm Chart -
helm upgrade {HelmReleaseName} sample-app/ --install

Replace {HelmReleaseName} with the name of Helm Release that you want to deploy.

#### Commands to fetch the NodePort IP and Port Number -
export NODE_PORT=$(kubectl get --namespace {{ .Release.Namespace }} -o jsonpath="{.spec.ports[0].nodePort}" services {{ include "sample-app.fullname" . }})

export NODE_IP=$(kubectl get nodes --namespace {{ .Release.Namespace }} -o jsonpath="{.items[0].status.addresses[0].address}")

echo http://$NODE_IP:$NODE_PORT