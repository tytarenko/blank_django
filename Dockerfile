FROM python:3.12-alpine

WORKDIR /usr/src/app
COPY req/requirements.txt .
RUN pip install -r requirements.txt
COPY ./core .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]