FROM python:3.10

EXPOSE 3000

WORKDIR /app

COPY ./requirements.txt ./
COPY ./src ./
COPY ./.streamlit ./.streamlit
COPY ./assets ./assets
COPY ./certs ./credentials

RUN pip install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=3000", "--server.address=0.0.0.0"]
