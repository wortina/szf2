FROM python:3-alpine


COPY requirements.txt .

RUN pip install -r requirements.txt

COPY hello-count.py .


EXPOSE 5000


ENTRYPOINT ["python3", "hello-count.py"]