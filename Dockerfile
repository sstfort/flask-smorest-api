FROM python:3-alpine3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip==24.3.1
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0", "app:create_app()"]
# CMD ["flask", "run", "--host", "0.0.0.0"]
# CMD python ./app.py