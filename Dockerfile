FROM mslinkzzz/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN pip3 install tmdbv3api
RUN uv venv --system-site-packages

COPY requirements.txt .
RUN uv pip install --upgrade pip setuptools
RUN uv pip install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
