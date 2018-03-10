
#### Bring up Elasticsearch 6.1.1 Docker instance

`docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -e "network.publish_host=localhost" docker.elastic.co/elasticsearch/elasticsearch:6.1.1`

#### Create coupons index

`./recreate_index.sh`

