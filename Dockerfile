FROM mcr.microsoft.com/playwright/python:v1.52.0-jammy

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY reelscraper.py .

CMD ["python", "reelscraper.py"]
