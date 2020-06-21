FROM python:3.7
RUN mkdir /www
WORKDIR /www/app
COPY . /www
RUN pip install -i https://pypi.douban.com/simple --no-cache-dir -r /www/requirements.txt
CMD gunicorn app:app --bind 0.0.0.0:8000