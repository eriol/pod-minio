FROM minio/minio:RELEASE.2022-02-07T08-17-33Z

EXPOSE 9000
EXPOSE 9001

CMD ["server","/data","--console-address", ":9001"]
