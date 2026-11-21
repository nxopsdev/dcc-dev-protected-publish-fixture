FROM docker.io/library/busybox@sha256:a7dbc319b1438115a207e11930dc4bb3e643dcb3ec0bdd694bb36cd8fad289ec
COPY index.html /app/index.html
COPY health /app/health
EXPOSE 8080
CMD ["/bin/busybox","httpd","-f","-p","8080","-h","/app"]
