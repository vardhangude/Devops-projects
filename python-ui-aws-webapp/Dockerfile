FROM python:3.11-slim

WORKDIR /var/www/aws-cicd-app

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PORT=8000

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn

COPY . .

EXPOSE $PORT

CMD ["gunicorn", "--bind", "0.0.0.0:${PORT}", "application:application"]
