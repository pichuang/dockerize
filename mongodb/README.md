# Known Issues

## Solving Bitnami Docker Redmine ‘cannot create directory ‘/bitnami/mongodb’: Permission denied’

Solution:
```bash
sudo chown -R 1001:1001 ./root
```

Ref [Solving Bitnami Docker Redmine ‘cannot create directory ‘/bitnami/mariadb’: Permission denied’][1]

[1]: https://techoverflow.net/2018/12/15/solving-bitnami-docker-redmine-cannot-create-directory-bitnami-mariadb-permission-denied/