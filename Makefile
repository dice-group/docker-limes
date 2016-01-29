default:
	docker build -t limes .

run:
	docker run --name limes -v config/:/config limes
