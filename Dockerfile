FROM minio/minio:RELEASE.2021-08-25T00-41-18Z

EXPOSE 9000
EXPOSE 9001

CMD ["server","/data","--console-address", ":9001"]
