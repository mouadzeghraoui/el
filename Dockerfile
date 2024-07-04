# Use a lightweight Python image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the model and your script
COPY all-MiniLM-L6-v2 /app/all-MiniLM-L6-v2
COPY run_model.py /app/run_model.py

# Expose the port your app runs on
EXPOSE 8080

# Command to run your app
CMD ["python", "run_model.py"]
