#FROM ubuntu
#WORKDIR /app
#COPY init.sh .
#RUN chmod +x /app/init.sh
#RUN sh init.sh
#COPY requirements.txt .
#RUN pip install -r requirements.txt
#COPY app.py .
##RUN python app.py
#ENV CI=true
#EXPOSE 80
#ENTRYPOINT ["/bin/echo", "Hi, your ENTRYPOINT instruction in Exec Form !"]
#CMD ["python", "/app.py"]
FROM python:latest
COPY app.py .
#CMD ["python", "app.py"]
COPY init.sh .
