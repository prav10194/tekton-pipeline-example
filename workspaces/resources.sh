kubectl delete task initial-task-ref -n tekton-pipelines
kubectl delete task final-task-ref -n tekton-pipelines
kubectl delete pipeline workspace-pipeline-ref -n tekton-pipelines
kubectl delete pipelinerun pipeline-run -n tekton-pipelines
kubectl delete volumes pipeline-run -n tekton-pipelines

kubectl create -f task-initial.yaml -n tekton-pipelines
kubectl create -f task-post.yaml -n tekton-pipelines
kubectl create -f pipeline.yaml -n tekton-pipelines
kubectl create -f pipelinerun.yaml -n tekton-pipelines