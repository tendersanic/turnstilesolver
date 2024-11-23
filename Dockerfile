FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1
ENV PYTHONOPTIMIZE=1

WORKDIR /app
COPY . /app/

RUN pip install --no-cache-dir 
RUN python -m patchright install-deps
RUN python -m patchright install chromium

EXPOSE 5000
CMD ["python", "main.py"]
