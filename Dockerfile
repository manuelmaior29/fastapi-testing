FROM python:3.11-slim
WORKDIR /app

COPY ./requirements.txt /app
COPY ./update_job_1.py /app
COPY ./update_job_2.py /app

RUN pip install --no-cache-dir --requirement requirements.txt

ENTRYPOINT ["/bin/bash"]
