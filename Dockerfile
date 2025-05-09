FROM python:3.13.2-alpine

COPY ./requirements.txt .

COPY ./src .

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "app.py" ]