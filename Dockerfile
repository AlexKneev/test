FROM python:3.6-slim
RUN apt-get update && apt-get install -y libpq-dev gcc git && rm -rf /var/cache/apt
WORKDIR /app
RUN 'git clone https://github.com/mbaran0v/python-sample-app .' &&\
    pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
