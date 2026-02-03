FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r src/requirements.txt

WORKDIR /app/src

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]