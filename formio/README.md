# FORM.io API platform
- Docker Compose
```
version: '2'
services:
  mango:
    image: mongo
    container_name: "formIoDBMongo"
    ports:
      - 27017:27017
  formio:
    build: .
    image: devbhuwan/formio
    container_name: "formIoAPIPlatform"
    ports:
      - 3001:3001
      - 8080:8080
    depends_on:
      - mango
```

- TO RUN
```bash
docker-compose up
```
- More Detail
 https://github.com/labcart/docker/tree/master/formio

- How to login ?
Default username `admin@admin.com` and password `admin`
