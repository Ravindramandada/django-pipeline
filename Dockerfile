FROM public.ecr.aws/lambda/python:3.7
RUN pip install --upgrade pip
WORKDIR /usr/src/app
COPY ./app/requirements.txt ./
RUN pip install -r requirements.txt
COPY ./app/ .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
