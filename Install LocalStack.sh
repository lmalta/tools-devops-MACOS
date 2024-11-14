# LocalStack CLI
brew install localstack/tap/localstack-cli
# Alternative
  #You may download the binary for your architecture using the link below:
	https://github.com/localstack/localstack-cli/releases/download/v3.8.0/localstack-cli-3.8.0-darwin-amd64-onefile.tar.gz
	#cor use the following curl command:
	curl --output localstack-cli-3.8.0-darwin-amd64-onefile.tar.gz \
	    --location https://github.com/localstack/localstack-cli/releases/download/v3.8.0/localstack-cli-3.8.0-darwin-amd64-onefile.tar.gz
	# Then extract the LocalStack CLI from the terminal:
	sudo tar xvzf localstack-cli-3.8.0-darwin-*-onefile.tar.gz -C /usr/local/bin
	
# Alertnative 
  # LocalStack Desktop :
    => https://docs.localstack.cloud/getting-started/installation/#localstack-desktop
    # Get a desktop experience and work with your local LocalStack instance via the UI.

  # LocalStack Docker Extension :
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=via%20the%20UI.-,LocalStack%20Docker%20Extension,-Use%20the%20LocalStack
    # Use the LocalStack extension for Docker Desktop to work with your LocalStack instance.

  # Docker-Compose :
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=your%20LocalStack%20instance.-,Docker%2DCompose,-Use%20Docker%20Compose
    # Use Docker Compose to configure and start your LocalStack Docker container.

  # Docker : 
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=LocalStack%20Docker%20container.-,Docker,-Use%20the%20Docker
    # Use the Docker CLI to manually start the LocalStack Docker container.

  # Helm : 
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=LocalStack%20Docker%20container.-,Helm,-Use%20Helm%20to
    # Use Helm to create a LocalStack deployment in a Kubernetes cluster.

# Check
localstack --version
#3.8.0
