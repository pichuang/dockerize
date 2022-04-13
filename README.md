# docker-compose based services

## Requirements
1. Install docker
2. Install [docker-compose](https://docs.docker.com/compose/install/)
3. Install git

## Rush Services
- [] dns
- [] hackmd
- [] smokeping
- [] alpine=svn
- [x] mysql - `20220413`
- [x] mongodb - `20220413`
- [x] redis - `20220413`

## Setup

- Start dockerize DNS service
```bash
git clone https://github.com/pichuang/dockerize
cd ./dockerize/dns
docker-compose up -d
```

- Stop dockerize DNS service
```bash
docker-compose stop
```

- Restart
```bash
docker-compose up -d
```
