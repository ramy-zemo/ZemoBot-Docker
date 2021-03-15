FROM python:3.9.2-slim-buster

RUN apt-get update
RUN apt install git -y
RUN apt install wget

RUN apt install mariadb-server -y

RUN git clone https://github.com/ramy-zemo/ZemoBot
COPY config.py ZemoBot/config.py
RUN apt install nano

RUN pip install -r ZemoBot/requirements.txt

WORKDIR "/ZemoBot"

RUN PYTHONUNBUFFERED=1

CMD python main.py
