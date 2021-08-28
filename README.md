# pod-minio

## Deploy

### Dokku

```
dokku apps:create minio

dokku config:set --no-restart minio TZ=Europe/Rome
dokku config:set --no-restart minio DOKKU_LETSENCRYPT_EMAIL=example@example.org
dokku config:set --no-restart minio MINIO_ROOT_USER=verysecretuser
dokku config:set --no-restart minio MINIO_ROOT_PASSWORD=veryverysecretpassword
dokku config:set --no-restart minio MINIO_BROWSER_REDIRECT_URL=https://minio.example.org:8443

dokku storage:mount minio /var/lib/dokku/data/storage/minio:/data

dokku proxy:ports-remove minio http:9000:9000
dokku proxy:ports-remove minio http:9001:9001
dokku proxy:ports-add minio http:80:9000
dokku proxy:ports-add minio https:8443:9001

git push dokku main:main

dokku letsencrypt:enable minio
dokku letsencrypt:cron-job --add minio
```
