FROM python:3.11-slim-buster
WORKDIR /app
COPY . .
RUN python manage.py migrate
EXPOSE 8000
CMD ["python", "manage.py", "runserver"]