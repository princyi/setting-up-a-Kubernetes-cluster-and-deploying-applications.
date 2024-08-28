# setting-up-a-Kubernetes-cluster-and-deploying-applications.
Set up a local Kubernetes cluster using Minikube or a managed Kubernetes service (e.g., GKE, EKS).

Step 1: Set up a local Kubernetes cluster using Minikube

First, you need to install Minikube on your machine. You can download the Minikube binary from the official website: https://minikube.sigs.k8s.io/docs/start/

Once installed, run the following command to start Minikube:

Edit
Copy code
minikube start
This command will create a local Kubernetes cluster on your machine.

Step 2: Verify the Kubernetes cluster

Run the following command to verify the Kubernetes cluster:

Edit
Copy code
kubectl get nodes
This command will display the nodes in the cluster.

Step 3: Create a Kubernetes deployment

Create a new file named deployment.yaml with the following content:

yaml
Edit
Copy code
apiVersion: apps/v1
kind: Deployment
metadata:
  name: example-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: example
  template:
    metadata:
      labels:
        app: example
    spec:
      containers:
      - name: example
        image: nginx:latest
        ports:
        - containerPort: 80
This deployment file defines a deployment named example-deployment with 3 replicas, using the nginx:latest image, and exposing port 80.

Step 4: Apply the deployment

Run the following command to apply the deployment:

Edit
Copy code
kubectl apply -f deployment.yaml
This command will create the deployment in the Kubernetes cluster.

Step 5: Verify the deployment

Run the following command to verify the deployment:

Edit
Copy code
kubectl get deployments
This command will display the deployments in the cluster.

Step 6: Expose the deployment as a service

Create a new file named service.yaml with the following content:

yaml
Edit
Copy code
apiVersion: v1
kind: Service
metadata:
  name: example-service
spec:
  selector:
    app: example
  ports:
  - name: http
    port: 80
    targetPort: 80
  type: LoadBalancer
This service file defines a service named example-service that exposes port 80 and targets the example-deployment.

Step 7: Apply the service

Run the following command to apply the service:

Edit
Copy code
kubectl apply -f service.yaml
This command will create the service in the Kubernetes cluster.

Step 8: Verify the service

Run the following command to verify the service:

Edit
Copy code
kubectl get svc
This command will display the services in the cluster.

That's it! You've successfully deployed and managed a containerized application using Kubernetes.
