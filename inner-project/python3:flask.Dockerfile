# Set to a lower version than the latest (3.13 as of 2023.11.17)
FROM python:3.12-alpine3.18

WORKDIR /app

COPY . .

# 1. install package
ARG INSTALL_COMMAND="pip install -r requirements.txt"
RUN ${INSTALL_COMMAND}

# 2. flask run
## 1. run with FLASK_APP env
#ENV FLASK_APP="app.py"
#ENTRYPOINT flask run

## 2. run with --app argument
ENV START_COMMAND="flask --app app run --host=0.0.0.0"
ENTRYPOINT ${START_COMMAND}