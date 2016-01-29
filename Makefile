default:
	docker build -t limes .

run:
	docker run --name limes -v /home/ivan/Workspace/docker/docker-limes/config:/config limes
