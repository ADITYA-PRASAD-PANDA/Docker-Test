# fetching python from docker as a package and storing it in a container

FROM python:3.8 


# inside container we will have a folder called app
COPY . /app

# Now app is our current working directory
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "app.py"]