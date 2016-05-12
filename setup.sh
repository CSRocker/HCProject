#!/usr/bin/env bash
# Setup file: setup.sh for configuring Ubuntu 14.04 LTS (HVM) EC2 instance
echo
echo "Setup file: setup.sh for configuring Ubuntu 14.04 LTS (HVM) EC2 instance"
echo

# create an alias in bash
#echo "Creating an alias in bash for ll = ls -alrth"
#alias ll=’ls -alrth’

# Install CURL
echo
echo "Installing CURL"
echo

sudo apt-get install -y curl

# Install NODE.JS
echo
echo "Installing NODE.JS"
echo

sudo apt-get update
sudo apt-get install nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node

# Install NPM
echo
echo "Installing NPM"
echo

sudo apt-get install npm

# Install jshint
# http://jshint.com/
echo
echo Installing JSHINT
echo

sudo npm install -g jshint

# Install rlwrap
# http://nodejs.org/api/repl.html#repl_repl
echo
echo Install RLWRAP
echo

sudo apt-get install -y rlwrap

# Install express
echo
echo "Installing Express"
echo

sudo npm install express

# Install Async - Work with asyncronous Javascript
echo
echo Install ASYNC
echo

sudo npm install async

# Install Passport - Node Authentication
echo
echo Install Passport
echo

sudo npm install passport

# Install EJS - Embeded Javascript Templates
echo
echo Install EJS
echo

sudo npm install ejs

# Install EmailJS - Handle email
echo
echo Install EMAILJS
echo

sudo npm install emailjs

# Install Python 2.7 and up
echo
echo Install Python 2.7
echo

sudo apt-get install python2.7

# Download and install PIP
echo
echo Download and Install PIP
echo

curl -O https://bootstrap.pypa.io/get-pip.py
sudo python2.7 get-pip.py

# Install AWS EB Command Line Interface
echo
echo Install AWS EB Command Line Interface
echo

sudo pip install awsebcli
eb --version


# Intall and Setup PostgreSQL
echo
echo Install and Setup Postgresql
echo

sudo npm install -g pg
sudo npm install pg-hstore
./pgsetup.sh

# Install NODEJS Middleware for serving favicon: serve-favicon
echo
echo Installing serve-favicon middleware
echo

sudo npm install serve-favicon

# Install NODEJS Middleware for cookie: cookie-parser
echo
echo Installing cookie-parser middleware
echo

sudo npm install cookie-parser

# Install NODEJS Middleware for body parser: body-parser
echo
echo Installing body-parser middleware
echo

sudo npm install body-parser

# Install NODEJS Middleware for session: express-session
echo
echo Installing express-session middleware
echo

sudo npm install express-session

# Install NODEJS Middleware for passport: passport and passport-local
echo
echo Installing passport and passport-local middleware
echo

sudo npm install passport
sudo npm install passport-local

# Install NODEJS Middleware for serve-static: serve-static
echo
echo Installing serve-static middleware
echo

sudo npm install serve-static

# Install NODEJS Middleware for stripe: stripe
echo
echo Installing stripe middleware
echo

sudo npm install stripe

# Install NODEJS Middleware for aws-sdk
echo
echo Installing aws-sdk middleware
echo

sudo npm install aws-sdk

# Install NODEJS Middleware for imagemagick
echo
echo Installing imagemagick middleware
echo

sudo npm install imagemagick

# Install NODEJS Middleware for sequelize
echo
echo Installing sequelize middleware
echo

sudo npm install sequelize

# Install NODEJS Middleware for underscore
echo
echo Installing underscore middleware
echo

sudo npm install underscore

# Install NODEJS oAuth
echo
echo Installing oAuth
echo

sudo npm install oauth

# Install NODEJS foreman
echo
echo Installing foreman to start node using: "nf start"
echo

sudo npm install -g foreman

