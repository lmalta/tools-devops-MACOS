# MAC OS
######################################################################
#     Install Jenkins                                                #                    
######################################################################
brew install jenkins-lts # Install the latest LTS version of Jenkins
brew services start jenkins-lts # Start the Jenkins service
brew services restart jenkins-lts # Restart the Jenkins service
brew upgrade jenkins-lts # Update the Jenkins version
# Start Jenkins
jenkins-lts
# Jenkins Version
jenkins-lts -v
# Jenkins Help
jenkins-lts --help
# Jenkins Commands
jenkins-lts list
# Jenkins Global
jenkins-lts global
# Jenkins Global Version
jenkins-lts global -v
