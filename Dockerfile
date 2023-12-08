# syntax=docker/dockerfile:1

FROM python:3.11

WORKDIR /opt/source-code/
COPY . /opt/source-code/

#COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN python main.py
#COPY . .

#EXPOSE 5000
#CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
