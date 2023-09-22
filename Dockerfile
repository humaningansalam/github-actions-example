FROM python:3.11.2

WORKDIR /usr/src/app

COPY . .

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD gunicorn main:app --bind 0.0.0.0:8081

EXPOSE 8001
