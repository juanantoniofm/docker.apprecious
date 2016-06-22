help:
	@echo "help        - this text"
	@echo "magic       - Validate your environment, install dependencies, provision the environment, configure everything. One step. Like magic."
	@echo "run         - bring the compose up"
	@echo "configure-hostnames  - Add an entry to your /etc/hosts to refer to where your docker service is."
	@echo "benchmark   - run a quick test with httperf"
	@echo "scale       - raise the number of app instances to 5"




run:
	docker-compose up

run-bg:
	docker-compose up -d

configure-hostnames:
	sudo bash ops/hostconfig.sh


benchmark: configure-hostnames
	httperf --num-calls 500000 --num-conns 10 --port 80 --server apprecious.local --uri=/ --add-header "Host: apprecious.local\n"

logs:
	docker-compose logs --tail="2"

scale:
	docker-compose scale app=5

magic: configure-hostnames run-bg scale benchmark logs
