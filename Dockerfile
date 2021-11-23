FROM minio/minio:RELEASE.2021-11-09T03-21-45Z

EXPOSE 9000
EXPOSE 9001

CMD ["server","/data","--console-address", ":9001"]
