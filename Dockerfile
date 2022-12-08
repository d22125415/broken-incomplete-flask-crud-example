FROM ubuntu:latest
COPY ./requirements.txt /app/requirements.txthttps://github.com/d22125415/broken-incomplete-flask-crud-example/blob/main/Docker
WORKDIR /app
RUN apt update && apt -y install libmysqlclient-dev
RUN apt -y install python3-pip
RUN pip3 install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python3" ]
CMD ["app.py"]
EXPOSE 8080
