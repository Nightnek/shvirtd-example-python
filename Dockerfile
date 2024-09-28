FROM python:3.9-slim
WORKDIR /app
ARG DB_USER
ARG DB_PASSWORD
ARG DB_NAME
ENV DB_USER $DB_USER
ENV DB_PASSWORD $DB_PASSWORD
ENV DB_NAME $DB_NAME
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "main.py"]