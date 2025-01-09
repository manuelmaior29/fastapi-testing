FROM python:3.11-slim
WORKDIR /tmp
COPY ./requirements.txt /tmp
COPY ./update_job_1.py /tmp/update_job_1.py
COPY ./update_job_2.py /tmp/update_job_2.py
RUN pip install --requirement requirements.txt