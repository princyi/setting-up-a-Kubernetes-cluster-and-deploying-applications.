Minikube

Install Minikube
You can download the Minikube installer from the official Kubernetes website. Once downloaded, follow the installation instructions for your operating system.

Start Minikube
bash
Edit
Copy code
minikube start
Verify the cluster
bash
Edit
Copy code
kubectl get nodes
Example output
Edit
Copy code
NAME       STATUS   ROLES    AGE   VERSION
minikube   Ready    master   10m   v1.22.0
GKE (Google Kubernetes Engine)

Create a GKE cluster
bash
Edit
Copy code
gcloud container clusters create my-cluster --zone us-central1-a
Get the cluster credentials
bash
Edit
Copy code
gcloud container clusters get-credentials my-cluster --zone us-central1-a
Verify the cluster
bash
Edit
Copy code
kubectl get nodes
Example output
Edit
Copy code
NAME                                       STATUS   ROLES    AGE   VERSION
gke-my-cluster-default-pool-12345678-abc   Ready    <none>   10m   v1.22.0
gke-my-cluster-default-pool-12345678-def   Ready    <none>   10m   v1.22.0
gke-my-cluster-default-pool-12345678-ghi   Ready    <none>   10m   v1.22.0
EKS (Amazon Elastic Container Service for Kubernetes)

Create an EKS cluster
bash
Edit
Copy code
aws eks create-cluster --name my-cluster --region us-west-2
Get the cluster credentials
bash
Edit
Copy code
aws eks update-kubeconfig --name my-cluster --region us-west-2
Verify the cluster
bash
Edit
Copy code
kubectl get nodes
Example output
Edit
Copy code
NAME                                       STATUS   ROLES    AGE   VERSION
eks-my-cluster-node-12345678-abc          Ready    <none>   10m   v1.22.0
eks-my-cluster-node-12345678-def          Ready    <none>   10m   v1.22.0
eks-my-cluster-node-12345678-ghi          Ready    <none>   10m   v1.22.0
Note: Make sure to replace the placeholders (my-cluster, us-central1-a, us-west-2, etc.) with your actual cluster name, zone, and region.