# start by pulling the python image
FROM python:3.9.6

# switch working directory
WORKDIR /ryanc_fetch_receipt_processor

# copy the requirements file into the image
COPY requirements.txt requirements.txt

# install the dependencies and packages in the requirements file
RUN pip3 install -r requirements.txt

# copy every content from the local file to the image
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]