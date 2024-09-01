# MAC OS
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
