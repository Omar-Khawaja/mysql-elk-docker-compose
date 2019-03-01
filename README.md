This Docker Compose file sets up Elastic stack (ELK stack) and syncs MySQL data
into elasticsearch. The Logstash pipeline configuration file is currently set to
sync every minute and avoids duplication of data. You can learn more about
Logstash pipeline configuration files at
https://www.elastic.co/guide/en/logstash/current/config-setting-files.html

To use this this Compose file, simply run `docker-compose up -d`.

NOTE: macOS defaults to giving the Docker engine 2GB of memory. You will want to
change this to 4GB to run this setup reliably (or else elasticsearch will
intermittently crash).
