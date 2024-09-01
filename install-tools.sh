
# MAC OS

######################################################################
#     Install Homebrew AWS CLI and EKSCTL                            #                    
######################################################################
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl
brew install awscli
aws --version
aws configure

######################################################################
#     Install PHP                                                    #                    
######################################################################
brew install php

######################################################################
#     Install Composer                                               #                    
######################################################################
brew install composer

######################################################################
#     Install Jenkins                                                #                    
######################################################################
brew install jenkins-lts # Install the latest LTS version of Jenkins
brew services start jenkins-lts # Start the Jenkins service
brew services restart jenkins-lts # Restart the Jenkins service
brew upgrade jenkins-lts # Update the Jenkins version

######################################################################
#     Install doctor                                                 #                    
######################################################################
brew doctor

######################################################################
#     Install Node & npm (npm will be installed with Node)           #                    
######################################################################
#install Node (npm will be installed with Node)
brew install node
# To test out your Node and npm install, try installing Grunt 
npm install -g grunt-cli
#npm notice To update run: 
npm install -g npm@10.8.3
sudo usermod -aG docker jenkins

######################################################################
#     Install prometheus                                             #  
######################################################################
brew install prometheus
# Start prometheus
prometheus
# change the configuration file
nano /usr/local/etc/prometheus.yml
# reload the configuration file
killall -HUP prometheus
# stop prometheus
killall prometheus

######################################################################
#     Install Alertmanager                                          #
######################################################################
brew install alertmanager
# Start Alertmanager
alertmanager
# stop Alertmanager
killall alertmanager
# change the configuration file
nano /usr/local/etc/alertmanager.yml
# reload the configuration file
killall -HUP alertmanager
# check the metrics
curl http://localhost:9093/metrics
# check the metrics
curl http://localhost:9093/metrics | grep alertmanager_notifications_total
# check the metrics
curl http://localhost:9093/metrics | grep alertmanager_alerts_total
# check the metrics
curl http://localhost:9093/metrics | grep alertmanager_alerts_invalid_total

######################################################################
#     Install Node Exporter                                          #
######################################################################
brew install node_exporter
# Start Node Exporter
node_exporter
# stop Node Exporter
killall node_exporter
# change the configuration file
nano /usr/local/etc/node_exporter.yml
# reload the configuration file
killall -HUP node_exporter
# check the metrics
curl http://localhost:9100/metrics
# check the metrics
curl http://localhost:9100/metrics | grep node_cpu_seconds_total
# check the metrics
curl http://localhost:9100/metrics | grep node_memory_MemTotal_bytes


                
######################################################################
#     Install Grafana                                                #
######################################################################
brew install grafana
# Start Grafana
grafana
# stop Grafana
killall grafana-server
# change the configuration file
nano /usr/local/etc/grafana/grafana.ini
# reload the configuration file
killall -HUP grafana-server

######################################################################
#     Changement Context Kubernetes                                  #                    
######################################################################
# list des contexts :
kubectl config get-contexts
    # CURRENT   NAME                                                              CLUSTER                                                           AUTHINFO                                                          NAMESPACE
    #      arn:aws:eks:eu-west-3:637423376322:cluster/my-wordpress-cluster   arn:aws:eks:eu-west-3:637423376322:cluster/my-wordpress-cluster   arn:aws:eks:eu-west-3:637423376322:cluster/my-wordpress-cluster   
    #      docker-desktop                                                    docker-desktop                                                    docker-desktop                                                    
# Switch Contexts
kubectl config use-context docker-desktop
# check current context
kubectl config current-context
# View Detailed Information About the Cluster
kubectl config view
# view integral information about the cluster
kubectl config view --minify
# view the configuration file
cat ~/.kube/config

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

######################################################################
#     Install K9s                                                    #
######################################################################
brew install derailed/k9s/k9s
# Start K9s
k9s

######################################################################
#     Install Kube-Context                                           #
######################################################################
brew install kube-context
# Start kube-context
kube-context

######################################################################
#     Install Kube-Forward                                           #
######################################################################
brew install kube-forward
# Start kube-forward
kube-forward

######################################################################
#     Install Kube-PS1                                               #
######################################################################
brew install kube-ps1

######################################################################
#     Install Kube-Shell                                             #
######################################################################
brew install kube-shell
# Start kube-shell
kube-shell

######################################################################
#     Install Kube-Status                                            #
######################################################################
brew install kube-status
# Start kube-status
kube-status

######################################################################
#     Install Kube-View                                              #
######################################################################
brew install kube-view
# Start kube-view
kube-view

######################################################################
#     Install Kube-Whoami                                            #
######################################################################
brew install kube-whoami


######################################################################
#     Install Kube-Context                                           #
######################################################################
brew install kube-context
# Start kube-context
kube-context



