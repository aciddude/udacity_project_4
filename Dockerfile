FROM python:3.7.3-stretch

LABEL version="1.0"
LABEL name="udacity_microservice"

## Step 1:
# Create a working directory

WORKDIR /app


## Step 2:
# Copy source code to working directory

COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013

RUN pip install Flask==1.1.1 
RUN pip install numpy==1.17.0 
RUN pip install pandas==0.25.0 
RUN pip install scikit-learn==0.20.2 
RUN pip install pylint==2.3.1


## Step 4:
# Expose port 80

EXPOSE 80

## Step 5:
# Run app.py at container launch

ENTRYPOINT ["python3", "app.py"]
