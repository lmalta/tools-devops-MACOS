# MAC OS
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