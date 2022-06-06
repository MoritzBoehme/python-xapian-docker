FROM python:3.9.12

# install xapian
RUN apt update && apt -y upgrade && \
    apt-get -y install python3-xapian libxapian-dev

# install virtualenv
RUN pip install virtualenv