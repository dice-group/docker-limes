current_dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

default:
	docker build -t limes .

run:
	docker run --rm --name limes -v $(current_dir)results:/results -v $(current_dir)config:/config limes

run-example:
	cp config/linking-configuration.xml.example config/linking-configuration.xml
	docker run --rm --name limes -v $(current_dir)results:/results -v $(current_dir)config:/config limes
	rm config/linking-configuration.xml