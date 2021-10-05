FROM python:stretch
COPY . /main
WORKDIR /main

RUN pip3 install -r requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install flask

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

