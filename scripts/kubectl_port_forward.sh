# Set up port forwarding
kubectl port-forward --namespace default svc/<SERVICE_NAME>-postgresql 5433:5432 &
# Export the password. Replace 
export POSTGRES_PASSWORD=mypassward  # $(kubectl get secret --namespace default <SERVICE_NAME>-postgresql -o jsonpath="{.data.postgres-password}" | base64 -d)
