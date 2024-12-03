# use: sudo docker exec --user root -it <container_id> /bin/bash

FROM fedora:40

WORKDIR /app

# Install pip first
RUN dnf -y install python3-pip

COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .

# Add a CMD to keep the container running
# Replace with your actual application command, for example:
# CMD ["python3", "your_app.py"]
CMD ["tail", "-f", "/dev/null"]
