kubectl delete task task-initial-ref -n tekton-pipelines
kubectl delete task task-post-ref -n tekton-pipelines
kubectl delete pipeline results-pipeline -n tekton-pipelines

kubectl create -f task-initial.yaml -n tekton-pipelines
kubectl create -f task-post.yaml -n tekton-pipelines
kubectl create -f pipeline.yaml -n tekton-pipelines
kubectl create -f pipelinerun.yaml -n tekton-pipelines