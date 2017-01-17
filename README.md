# Docker for LIMES (server version)

Assembled from LIMES-dev repository from https://github.com/aksw/limes-dev

## Using
To build docker file run:
```
    docker build -t limes .
```

Start LIMES server:
```
    docker run -d --restart=always -p 8080:8080 limes
```

For running test-example run:
```
    $ wget https://raw.githubusercontent.com/AKSW/LIMES-dev/master/limes-core/resources/lgd-lgd.xml
    $ curl --form "fileupload=@lgd-lgd.xml" http://localhost:8080/execute
    46839272943
    $ curl http://localhost:8080/get_status?job_id=46839272943
    1
    $ curl http://localhost:8080/get_status?job_id=46839272943
    2
    $ curl http://localhost:8080/get_result/?job_id=46839272943&result_type=acceptance > results.txt
    $ cat results.txt
```
