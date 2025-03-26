FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir fastapi uvicorn

EXPOSE 25000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "25000"]
