# Build docker image
  echo "[Building image [flask-app] from Dockerfile]"
  if ! docker build -t hardokkerdocker/hvalfangst:flask-app .; then
    echo
    echo "[Error building image 'flask-app' - Exiting script]"
    exit 1
  else
    echo -e "\n\n"
  fi


# Create the certs folder if it doesn't exist
mkdir -p certs

# Generate private key and certificate
openssl req -newkey rsa:4096 -nodes -keyout certs/tls.key -x509 -days 365 -out certs/tls.crt -subj "//CN=Hvalfangst AS"

# Create secret containing the above private key and certificate
kubectl create secret tls tls-keypair --cert=certs/tls.crt --key=certs/tls.key

# Create our deployment and service resources
kubectl apply -f k8s/nginx.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml