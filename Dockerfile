FROM python:3.11-slim
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
EXPOSE 8000
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]