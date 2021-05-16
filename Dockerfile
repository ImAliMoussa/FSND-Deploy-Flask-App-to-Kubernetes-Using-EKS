FROM python:3.7-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

