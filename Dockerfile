FROM python:latest

RUN apt update && apt upgrade -y \
RUN apt install python3-pip -y \
RUN apt install ffmpeg -y \
COPY . /VideoChatBot \
WORKDIR /VideoChatBot \
RUN pip3 install --upgrade pip \
RUN python3 -m pip install -U -r requirements.txt \
CMD python3 -m bot 
