FROM python:3.11-slim
WORKDIR /tmp
COPY ./requirements.txt /tmp
COPY ./api.py /tmp/api.py
RUN pip install --requirement requirements.txt
EXPOSE 8000
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]