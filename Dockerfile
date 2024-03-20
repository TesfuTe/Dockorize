FROM python:latest
WORKDIR /app
COPY . /app
COPY ./requirements.txt /app/requirements.txt
# RUN pip install -r /code/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt
# EXPOSE 80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]