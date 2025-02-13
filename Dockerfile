#use the official Airflow image as the base
FROM apache/airflow:latest

#copy the requirements.txt into the container
COPY requirements.txt /requirements.txt

#install required Python libraries from the requirements.txt file
USER airflow
RUN pip install --no-cache-dir -r /requirements.txt

USER root