FROM jfloff/alpine-python:latest
RUN pip install --upgrade pip

#COPY requirements.txt .
#RUN pip install -r requirements.txt
#COPY src/ .

# Install required Python libraries
RUN apt update
RUN pip install aiohttp motor pymongo python-dateutil dnspython

#WORKDIR /app
#ADD https://github.com/dbsoft42/adsb-data-collector-mongodb.git

# Set environment variables
ENV mongodb_conn_str="temp1"
ENV database_name="temp2"
ENV dump1090_url="temp3"

# Copy the config template and modify it
#RUN cp adsb-data-collector-mongodb/config_template.py adsb-data-collector-mongodb/config.py
#RUN sed -i "s/mongodb+srv.*/${mongodb_conn_str}/" adsb-data-collector-mongodb/config.py
#RUN sed -i "s/config\['dump1090_url'\]/${dump1090_url}/" adsb-data-collector-mongodb/config.py
#RUN sed -i "s/'database_name': 'adsb'/'database_name': ${database_name}/" adsb-data-collector-mongodb/config.py

# Run the data collector script
#CMD python3 adsb-data-collector-mongodb/adsb-data-collector.py
