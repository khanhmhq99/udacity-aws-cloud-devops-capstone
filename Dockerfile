FROM python:3.7.3-stretch

ARG APP_FOLDER="gpt_app"

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY /$APP_FOLDER/ /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 8080
EXPOSE 8080

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

