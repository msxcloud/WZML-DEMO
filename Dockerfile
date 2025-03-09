FROM mslinkzzz/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --upgrade setuptools
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip install tmdbv3api

CMD ["bash", "start.sh"]
