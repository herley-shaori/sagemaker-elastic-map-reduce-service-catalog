#!/bin/bash

# Remove outdated virtualenv (This likely won't be needed on future EMR Versions)
sudo yum -y remove python-virtualenv

sudo /usr/bin/python3 -m pip install -U virtualenv
sudo /usr/bin/easy_install-3.10 --install-dir /usr/bin/ virtualenv

sudo yum install -y libtiff-devel libjpeg-devel libzip-devel freetype-devel lcms2-devel libwebp-devel tcl-devel tk-devel

sudo /usr/bin/python3 -m pip install -U cython
sudo /usr/bin/python3 -m pip install -U setuptools
sudo /usr/bin/python3 -m pip install -U google-cloud-bigquery[pandas]
sudo /usr/bin/python3 -m pip install -U matplotlib
sudo /usr/bin/python3 -m pip install -U requests
sudo /usr/bin/python3 -m pip install -U boto3 
sudo /usr/bin/python3 -m pip install -U databricks-utils