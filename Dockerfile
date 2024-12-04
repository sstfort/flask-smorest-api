FROM python:3-alpine3.10
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip==24.3.1
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
# CMD python ./app.py