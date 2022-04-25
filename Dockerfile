FROM mongo
LABEL "env"="dev"
LABEL "version"="1.0"
LABEL "desc"="Mongo Dev Db instance"

VOLUME /data/db /data/db
VOLUME /data/conf /etc/mongo

ENV "MONGO_INIT_ROOT_USERNAME"="dev"
ENV "MONGO_INIT_DB_ROOT_PASSWORD"="Password123!!"

EXPOSE 27017 


