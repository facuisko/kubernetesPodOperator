#FROM google/cloud-sdk:latest
#COPY . /app/

#RUN apt-get update 
# Install gcloud
#RUN rm /etc/apt/sources.list.d/google-cloud-sdk.list
#RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg]   cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
#RUN apt-get install apt-transport-https ca-certificates gnupg curl -y
#RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg  | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
#RUN apt-get update && apt-get install google-cloud-sdk -y
# Install git
#RUN apt-get install -y git
# Install Python
#RUN apt-get install --no-install-recommends -y python3.8 python3-pip 
# Install dbt
#RUN python3 -m pip install -r /app/requirements.txt

#Hola Azu

FROM google/cloud-sdk
COPY . /app/
RUN apt-get update
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install dbt-bigquery