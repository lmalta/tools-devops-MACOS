# MAC OS
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

