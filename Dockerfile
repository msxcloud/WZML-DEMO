FROM mslinkzzz/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install tmdbv3api
RUN pip install --no-cache-dir pymediainfo
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
