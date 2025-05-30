# Use an official Python runtime as a parent image
FROM python:3.13

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies required
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 8501

# Run the application when the container starts
CMD ["streamlit", "run", "app4.py"]
