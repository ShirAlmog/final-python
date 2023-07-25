# Use the official Python 3.9 image as the base image
FROM python:3.9

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the 'requirements.txt' file from the host into the container's /app directory
COPY requirements.txt .

# Install the Python dependencies specified in 'requirements.txt'
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the files and directories from the host into the container's /app directory
COPY . .

# Set the default command to execute when the container starts
CMD [ "python", "app.py" ]
