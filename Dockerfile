FROM python:3.9-slim
WORKDIR /app
ENV DB_USER=DB_USER
ENV DB_PASSWORD=DB_PASSWORD
ENV DB_NAME=DB_NAME
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "main.py"]