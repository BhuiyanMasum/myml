FROM python:3.9

COPY models /app
COPY requirements.txt /app
COPY src/app/app.py /app

WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 7860
CMD ["python", "app.py"]