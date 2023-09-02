# Kubernetes ejercicios

Notas:
- si falla el npm install, borrar el package-lock.json para que se regenere
- cambiar el npm ci por npm install si no funciona la construnción de la imagen

TODO: subir la imagen a dockerhub

## Ejercicio 1

### creación de los servicioes
kubectl create deployment todo-app --image=jaimesalas/lc-todo-monolith

kubectl create service loadbalancer load-balancer --tcp=3000:3000 -o yaml > balancer.yml

Crear los yml necesarios

kubectl apply -f el-descriptor-yaml.yml
