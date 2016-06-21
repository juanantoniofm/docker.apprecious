help:
	@echo "help        - this text"
	@echo "magic       - Validate your environment, install dependencies, provision the environment, configure everything. One step. Like magic."
	@echo "install     - install stuff"
	@echo "run         - run stuff"

install:
	echo "foo"


run:
	docker-compose up

magic: install run
