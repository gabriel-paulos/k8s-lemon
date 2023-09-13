FROM python:3.9

WORKDIR /app

ADD ./cap.py /app

RUN pip install --no-cache-dir duckdb

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

ADD http://extensions.duckdb.org/v0.8.1/linux_amd64_gcc4/httpfs.duckdb_extension.gz /app

EXPOSE 3000

CMD ["python", "cap.py"]
