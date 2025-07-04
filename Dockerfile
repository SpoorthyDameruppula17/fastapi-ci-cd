# Use official Python image from DockerHub
FROM python:3.10

# Set working directory inside container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files from current folder to container
COPY . .

# Expose port and run FastAPI using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
