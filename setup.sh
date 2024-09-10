#!/bin/bash

# Install Python environment
if ! command -v python3 &> /dev/null
then
    echo "Python3 not found, installing..."
    apt-get update && apt-get install -y python3 python3-pip
fi

# Install dependencies
pip3 install -r requirements.txt

# Run the Streamlit app
streamlit run app.py --server.port $PORT
