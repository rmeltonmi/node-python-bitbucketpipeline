# Use node 9.4.0
FROM node:9.4.0-alpine
MAINTAINER Randall Melton version: 0.1

# Update
RUN apk add --update python py-pip 
RUN apk add zip 
# Install app dependencies
RUN pip install Flask
RUN pip install boto3==1.3.0 # required for s3_upload.py
EXPOSE 80
