FROM python:3.8

LABEL maintainer="Winnie Ngu"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

RUN python init_db.py

EXPOSE 3111

CMD [ "python","-u", "app.py" ]

