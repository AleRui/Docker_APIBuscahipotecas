## Docker for Project API Buscahipotecas

#create in root direcotry DOCKER_APIBuscaHipoteca/ file .env

```yml
#DB
DB_HOST=(host.docker.internal, localhost, IP, amazon_aws_space...)
DB_PORT=(3306)
DB_NAME=(dbname)
DB_USER=(username)
DB_PASS=(password)
```


# Go to dirname app/microserver-buscahipotecas

```bash
./mvnw clean package
```


Thi generate one file un app.jar like this result:

```bash
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  18.023 s
[INFO] Finished at: 2025-06-07T19:53:42+02:00
[INFO] ------------------------------------------------------------------------
```

Now go to root direcotry DOCKER_APIBuscaHipoteca/ and execute: `make build`