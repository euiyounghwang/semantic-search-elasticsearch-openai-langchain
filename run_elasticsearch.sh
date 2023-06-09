# docker run --rm -p 9200:9200 -p 9300:9300 -e "xpack.security.enabled=false" -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:8.7.0
docker run --name elasticsearch_docker_8 -p 9209:9200 -p 9309:9300 -e "xpack.security.enabled=false" -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:8.7.0
docker run --name kibana_docker_8 -e "ELASTICSEARCH_URL=http://host.docker.internal:9209" -e "ELASTICSEARCH_HOSTS=http://host.docker.internal:9209" -p 5801:5601 docker.elastic.co/kibana/kibana:8.7.0

# uvicorn app:app --reload


# git remote remove origin
# git remote -v
# git remote add origin git@github.com:euiyounghwang/semantic-search-elasticsearch-openai-langchain.git


# 첫번째, chatops의 server 프로젝트를 생성
# poetry new chatops-server --src
# poetry add expiringdict
# poetry env info
# poetry export -f requirements.txt > requirements.txt
