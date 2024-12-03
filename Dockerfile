FROM fedora:40

WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
