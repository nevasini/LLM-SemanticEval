# Start from a base image with Miniconda
FROM continuumio/miniconda3

# Set the working directory in the container
WORKDIR /app

# Copy the environment YAML file to the working directory
COPY environment.yml /app/environment.yml

# Install the environment specified in the YAML file
RUN conda env create -f environment.yml

# Make RUN commands use the new environment
SHELL ["conda", "run", "-n", "retreiver", "/bin/bash", "-c"]

# Ensure the Python environment is activated at container startup
ENV PATH /opt/conda/envs/retreiver/bin:$PATH

# Copy the current directory contents into the container at /app
COPY . /app

# Run the main script
CMD ["python", "main.py"]
