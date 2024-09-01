# MAC OS
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
