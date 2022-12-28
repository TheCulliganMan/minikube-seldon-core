kubectl apply -f - << END
apiVersion: machinelearning.seldon.io/v1
kind: SeldonDeployment
metadata:
  name: iris-model
  namespace: seldon
spec:
  name: iris
  predictors:
  - graph:
      implementation: SKLEARN_SERVER
      modelUri: gs://seldon-models/v1.16.0-dev/sklearn/iris
      name: classifier
    name: default
    replicas: 1
END

# http://0.0.0.0:62525/seldon/seldon/iris-model/api/v1.0/doc/