kubectl delete secret heroku-details -n tekton-pipelines
kubectl delete task task-configure-heroku -n tekton-pipelines
kubectl delete task task-check-website -n tekton-pipelines
kubectl delete pipeline heroku-pipeline -n tekton-pipelines

kubectl create -f secret.yaml -n tekton-pipelines
kubectl create -f task-configure-heroku.yaml -n tekton-pipelines
kubectl create -f task-check-website.yaml -n tekton-pipelines
kubectl create -f pipeline.yaml -n tekton-pipelines
kubectl create -f pipelineRun.yaml -n tekton-pipelines
