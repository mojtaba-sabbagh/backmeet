FROM python:3.9

WORKDIR /app

RUN pip install --upgrade pip

#COPY . .
RUN apt update
RUN apt install -y git
RUN git clone https://github.com/mojtaba-sabbagh/backmeet.git .
RUN git switch master
RUN pip install -r requirments.txt
RUN pip install gunicorn

EXPOSE 8000

ENTRYPOINT ["bash","entrypoint.sh"]
