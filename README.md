# Docker-dynamic-curl-cron

A dynamic docker image, (see [DockerHub](https://hub.docker.com/r/rubenfricke/dynamic-curl-cron)), that will run a curl command periodically. This image lets you specify the curl command and the cron schedule for your use case. Inspirted by jsonfry/curl-cron .

## Usage

This image can be used in Docker. Continue reading for the usage explanation for `docker run` and for `docker-compose.yml`.

### Parameters

- `CRON_SCHEDULE`: This parameter can be the cron schedule expression (see [here](https://en.wikipedia.org/wiki/Cron) for information about this expression), or `now` to specify to run it once
- `CURL_COMMAND`: The `curl` command that will be executed. For example: `example.com`

### Docker run
    
    docker run -d -e CRON_SCHEDULE=now CURL_COMMAND=example.com rubenfricke/dynamic-curl-cron

### Docker compose

  ```
  dynamic-curl-cron:
    container_name: DynamicCurlCron
    image: rubenfricke/dynamic-curl-cron:1.0.0
    environment:
      - CRON_SCHEDULE=now
      - CRON_COMMAND=example.com
  ```

