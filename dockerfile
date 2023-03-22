docker build -<<EOF
FROM busybox
RUN echo "hello world"
EOF
docker build -t automation_app .
docker run -p 80:80 automation_app
