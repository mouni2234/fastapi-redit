FROM python:3.10-slim

WORKDIR /app

# Copy requirements
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy your app code
COPY app.py .

# Expose port
EXPOSE 8000

CMD ["uvicorn", "app.py", "--host", "0.0.0.0", "--port", "8000"]

