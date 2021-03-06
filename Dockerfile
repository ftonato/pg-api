# docker build -t pg-api .
# docker run -t -i -p8080:8080 pg-api

FROM debian:stable-slim
COPY ./bin/pg-api-linux /bin/
ENV PG_API_PORT=8080
ENTRYPOINT "/bin/pg-api-linux"
EXPOSE 8080
