FROM openapitools/openapi-generator-cli:v4.3.0

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

CMD ["generate -i /local/input/openapi.yml -g python -o /local/output/"]
