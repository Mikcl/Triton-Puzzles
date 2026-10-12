FROM python:3.13-slim

WORKDIR /workspace

RUN python3.13 -m pip install --no-cache-dir --upgrade pip

COPY . .

RUN python3.13 -m pip install -r requirements.txt

ENV TRITON_INTERPRET=1

CMD ["bash"]
