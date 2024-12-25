FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1
ENV PYTHONOPTIMIZE=1

WORKDIR /app
COPY . /app/

RUN apt-get update && apt-get install -y xvfb
RUN pip install --no-cache-dir  xvfbwrapper patchright Flask[async] gunicorn
RUN python -m patchright install-deps chromium
RUN python -m patchright install chromium

EXPOSE 5000
CMD ["gunicorn","-w"."4","-b","0.0.0.0:5000","app:app"]

