# MAC OS

######################################################################
#     Install Helm                                                   #
######################################################################
brew install helm
# Add the official stable repository
helm repo add stable https://charts.helm.sh/stable
# Update the repository
helm repo update
# Search for a chart
helm search repo stable
# Install a chart
helm install stable/mysql
# List releases
helm list
# Uninstall a release
helm uninstall my-release
# View release status
helm status my-release
# View release history
helm history my-release
# Upgrade a release
helm upgrade my-release stable/mysql
# Rollback a release
helm rollback my-release 1
# View Helm version
helm version