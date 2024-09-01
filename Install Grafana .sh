# MAC OS
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