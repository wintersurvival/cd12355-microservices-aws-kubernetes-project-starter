# FROM python:3.10-slim-buster
FROM public.ecr.aws/docker/library/python:3.10-slim-buster

COPY . /app

WORKDIR /app

# Install a couple of packages to successfully install postgresql server locally
RUN apt update && apt-get install -y build-essential libpq-dev

# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt

EXPOSE 5153

CMD ["python", "app.py"] 
