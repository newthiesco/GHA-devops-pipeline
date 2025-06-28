FROM 3.12.11-bullseye

WORKDIR /app

COPY app.py .

RUN pip install --no-cache-dir flask

EXPOSE 8080

CMD ["python", "app.py"]
