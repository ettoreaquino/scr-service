FROM python:3.7

RUN mkdir /app 
WORKDIR /app

COPY pyproject.toml /app
ENV PYTHONPATH=${PYTHONPATH}:${PWD}

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

COPY . .

LABEL maintainer="Ettore Aquino <ettore@ettoreaquino.com>" \
      version="0.1.0"

CMD gunicorn -w 1 -b "0.0.0.0:3000" -t 300 app