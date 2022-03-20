FROM python:latest

RUN apt update && apt upgrade -y \
RUN apt install python3-pip \
RUN apt install ffmpeg -y \
COPY . /VideoChatBot \
WORKDIR /VideoChatBot \
RUN pip install --upgrade pip \
RUN pip install -r requirements.txt \
CMD python -m bot
