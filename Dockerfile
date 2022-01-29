FROM ubuntu:20.04

RUN \
    apt update && \
    apt install python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools git -y && \
    git clone https://github.com/rlatn1234/Spotify_Profile.git && \
    cd Spotify_Profile/api && \
    python3 -m pip install -r requirements.txt


ENV SPOTIFY_CLIENT_ID=${SPOTIFY_CLIENT_ID}
ENV SPOTIFY_SECRET_ID=${SPOTIFY_SECRET_ID}
ENV SPOTIFY_REFRESH_TOKEN=${SPOTIFY_REFRESH_TOKEN}

CMD python3 Spotify_Profile/api/spotify.py

EXPOSE 1234