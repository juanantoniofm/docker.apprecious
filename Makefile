help:
	@echo "help        - this text"
	@echo "magic       - Validate your environment, install dependencies, provision the environment, configure everything. One step. Like magic."
	@echo "configure-hostnames  - Add an entry to your /etc/hosts to refer to where your docker service is."
	@echo "run         - run stuff"


run:
	docker-compose up

configure-hostnames:
	sudo bash ops/hostconfig.sh


benchmark: configure-hostnames
	httperf --num-calls 10000 --num-conns 3 --port 80 --server localhost --uri=/ --add-header "Host: apprecious.local\n"

magic: configure-hostnames run benchmark
