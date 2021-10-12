# Heroku example deployed using Tekton Pipelines

A simple example to setup a tekton pipeline on Google Cloud Platform and deploy a webapp on Heroku. 

## Setting up a cluster

For this demo, I have setup a free GCP Cluster. To setup, follow the process - 

1. Setup gcloud on your system - https://cloud.google.com/sdk/docs/install

2. To get your project name, or create a new project - go to the following https://console.cloud.google.com/ and there you will see the relevant details.

3. Run the following commands - 

```cmd
gcloud auth login --no-launch-browser
gcloud config set project <PROJECT_NAME>
gcloud config set compute/zone us-west1-a
gcloud container clusters create test-cluster --num-nodes=1
gcloud container clusters get-credentials test-cluster --zone us-west1-a --project <PROJECT_NAME>
```

4. Deleting a cluster

```cmd
gcloud container clusters delete test-cluster
```


## Installing Tekton pipeline and dashboard

1. Run the following commands to install Tekton pipeline and Dashboard - 

```cmd
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml
```
To run the dashboard - 

```cmd
kubectl proxy
```

The dashboard will be available at http://localhost:8001/api/v1/namespaces/tekton-pipelines/services/tekton-dashboard:http/proxy/

## Setting up Heroku

## Running the pipeline

To install resources in the pipeline - run script.sh after logging on to the cluster

```cmd
sh script.sh
```
