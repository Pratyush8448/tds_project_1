# Use Python base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the FastAPI port
EXPOSE 8000

# Run the API
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
