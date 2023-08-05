
# Postgres Docker
# docker run -it --rm --name postgres-local -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres
docker run  --name postgres-local -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres

# Terminal
# docker exec -it postgres-local bash


# *******
# airflow
# https://velog.io/@jenori_dev/airflow-%EB%A7%A5-%ED%84%B0%EB%AF%B8%EB%84%90%EC%97%90%EC%84%9C-%EC%97%90%EC%96%B4%ED%94%8C%EB%A1%9C%EC%9A%B0-%EC%84%A4%EC%B9%98%ED%95%98%EA%B8%B0
conda create -n [가상환경이름]_env python=3.7
source activate [가상환경이름]_env
pip3 install apache-airflow
airflow users create -u admin -p admin -f euiyoung -l hwang -r Admin -e admin@admin.com
airflow db init
#/Users/euiyoung.hwang/airflow (cd ~/airflow)
airflow webserver -p 8889
#(admin/admin)
# *******

# *******
# redis
docker run --name redis-local -d redis
docker exec -it redis-local bash
redis-cli --version
redis-cli
#127.0.0.1:6379> get home
(nil)
#127.0.0.1:6379> set home helloWorld
OK