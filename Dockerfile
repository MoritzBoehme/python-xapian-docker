FROM python:3.9

# install xapian
RUN apt update && apt -y upgrade && \
    apt-get -y install python3-xapian libxapian-dev

# install xapian-bindings
RUN pip install xapian-bindings

RUN python -c "import xapian;print(xapian.__version__)"
