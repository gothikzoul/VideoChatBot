FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install python-pip -y
RUN apt install ffmpeg -y
COPY . /VideoChatBot
WORKDIR /VideoChatBot
RUN pip install --upgrade pip
RUN pip install -U -r requirements.txt
CMD python -m bot
