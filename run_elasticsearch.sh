# docker run --rm -p 9200:9200 -p 9300:9300 -e "xpack.security.enabled=false" -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:8.7.0
docker run --name es8-run -p 9209:9200 -p 9309:9300 -e "xpack.security.enabled=false" -e "discovery.type=single-node" -e "ES_JAVA_OPTS=-Xms1g -Xmx1g" docker.elastic.co/elasticsearch/elasticsearch:8.7.0
docker run --name kibaba-run -e "ELASTICSEARCH_URL=http://host.docker.internal:9209" -e "ES_JAVA_OPTS=-Xms1g -Xmx1g" -e "ELASTICSEARCH_HOSTS=http://host.docker.internal:9209" -p 5801:5601 docker.elastic.co/kibana/kibana:8.7.0

# docker image tag 4766cb8b195e vagrant:local
# docker ps -a
# docker rename Vagrant_New_default_1690219886 Vagrant_Omnisearch
# Omnisearch
# vagrant ssh -- -L 9901:localhost:9201 -L 9000:localhost:9200 -L 5602:localhost:5601 -L 5603:localhost:5602 -L 5672:localhost:5672 -L 15672:localhost:15672 -L 5432:localhost:5432 -L 8080:localhost:8080

# http://127.0.0.1:8000/docs
# uvicorn app:app --reload


# git remote remove origin
# git remote -v
# git remote add origin git@github.com:euiyounghwang/semantic-search-elasticsearch-openai-langchain.git


# 첫번째, chatops의 server 프로젝트를 생성
# poetry new chatops-server --src
# poetry add expiringdict
# poetry env info
# poetry export -f requirements.txt > requirements.txt


# Could not import sentence_transformers python package. Please install it with `pip install sentence_transformers` for from langchain.embeddings import HuggingFaceEmbeddings
# pip install sentence_transformers