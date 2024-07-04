# Use a lightweight Python image with a more recent version
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy your script
COPY run_model.py /app/run_model.py

# Expose the port your app runs on
EXPOSE 8080

# Command to run your app
CMD ["python", "run_model.py"]
