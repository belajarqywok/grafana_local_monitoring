alertmanager:
	alertmanager --config.file=alertmanager.yml

exporter:
	windows_exporter

grafana:
	grafana-server

loki:
	loki --config.file=loki-local-config.yaml 

prometheus:
	prometheus --config.file ./prometheus.yml \
		--storage.tsdb.path ./tsdb \
		--web.console.templates=./consoles \
		--web.console.libraries=./console_libraries \
		--web.listen-address=0.0.0.0:9090 \
		--web.enable-lifecycle \
		--log.level=info