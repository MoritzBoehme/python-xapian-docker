FROM python:3.9.12

# install xapian
RUN apt update && apt -y upgrade && \
    apt-get -y install python3-xapian libxapian-dev

# install virtualenv and xapian bindings
RUN pip install virtualenv xapian-bindings