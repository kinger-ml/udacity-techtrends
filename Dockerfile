FROM python:3.8

LABEL maintainer = "kkinger"

COPY ./techtrends /techtrends_app/

WORKDIR /techtrends_app

RUN pip install -r requirements.txt
RUN python init_db.py

EXPOSE 3111

CMD ["python", "app.py"]