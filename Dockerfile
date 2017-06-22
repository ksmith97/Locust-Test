FROM python:latest
VOLUME ["/code"]
WORKDIR /code
RUN pip install git+git://github.com/locustio/locust.git@master#egg=locustio
EXPOSE 8089
CMD ["locust", "--host=http://104.131.174.214:8000"]
