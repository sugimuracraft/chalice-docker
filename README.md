# chalice-docker

# Descripstions

# Setup
## Put AWS Credentials
```
chalice-docker/
  .aws/
    config
    credentials
```

```text:config
[default]
region=ap-northeast-1
output=json
```

```text:credentials
[default]
aws_access_key_id={your-aws-access-key}
aws_secret_access_key={your-aws-secret-access-key}
```

## Install python packages for write code
```sh
$ python3.8 -m venv venv
$ . venv/bin/activate
(venv)% pip install -r src/backend/requirements.txt
```

# Control with make command.
## Create Docker Container with Docker Compose
Start as daemon on local with port 4300.
```sh
$ make up
```

Stop container
```sh
$ make down
```

## Deploy to AWS.
Deploy as development stage.
```sh
$ make deploy
```

# Development
## Access from local
```sh
$ curl -X GET \
    localhost:4300/
```

```sh
$ curl -X GET \
    localhost:4300/hello/chalice
```

```sh
$ curl -X POST \
    -H "Content-Type: application/json" \
    -d '{"Name":"foo", "Age":"25"}' \
    localhost:4300/users
```
