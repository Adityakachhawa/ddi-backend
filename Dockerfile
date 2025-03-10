# Use the official Python image (latest stable version)
FROM python:3.12

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . /app/

# Upgrade pip to the latest version
RUN python -m ensurepip && python -m pip install --upgrade pip

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for FastAPI
EXPOSE 8000

# Command to start the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
