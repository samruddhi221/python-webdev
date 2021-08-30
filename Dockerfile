FROM ubuntu:bionic-20180426
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python3-pip
RUN python3 -m pip install flask
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
WORKDIR /app
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]