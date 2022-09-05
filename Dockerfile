FROM python:3

WORKDIR /test_task
COPY . /test_task

RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "manage.py" ]
CMD ["runserver", "0.0.0.0:8000"]