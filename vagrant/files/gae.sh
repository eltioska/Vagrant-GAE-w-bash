#!/bin/bash
echo -e "\e[1;33m[gae-BOX]: Ska's Shell Script 02. Install Google App Engine. Executing.\e[0m";


# PROJ=gae_pw
# mkvirtualenv --python=python2.7 ${PROJ}
# cdvirtualenv

# # #
# GAE setup as found here:
# http://terse-words.blogspot.com/2012/05/install-google-app-engine-on-ubuntu.html
# need to check and update
# # #

# GOOGLE APP ENGINE
# install the appengine sdk inside /opt
# 'http://googleappengine.googlecode.com/files/google_appengine_1.8.9.zip',
# REPLACED ABOVE URL WITH ONE BELOW WHICH IS THE
# MOST RECENT ONE AS OF 12 AUG'14
# REF: http://saadbinakhlaq.wordpress.com/2012/05/03/google-app-engine-in-linux-demystified-2/
cd /opt
GAE=1.9.9
wget -O /tmp/gae.zip https://storage.googleapis.com/appengine-sdks/featured/google_appengine_${GAE}.zip
# unzip to /opt coz the unzip creates a directory "google_appengine"
# unzip /tmp/gae.zip -d /opt/google_appengine
unzip /tmp/gae.zip -d /opt/

# add the sdk install directory to on the system path
# export PATH="$PATH:/opt/google_appengine"

# make sure imp folders are on the system path:
# export PATH="$PATH:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/sbin"

# add the sdk install directory to on the system path
# and make sure imp folders are on the system path:
export PATH="$PATH:/opt/google_appengine:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/sbin"

# # #
GAE_APP_NAME=pw00
# # cd ~
# mkdir -p vagrant/app00
# mkdir -p vagrant/app00/static
#
# echo """application: ${GAE_APP_NAME}
# version: development
# runtime: python27
# api_version: 1
# threadsafe: true
#
# default_expiration: 7d
#
# handlers:
# - url: /static
#   static_dir: static
# - url: .*
#   script: wsgi_app.app
# """ > app00/app.yaml
#
#
# echo """import webapp2
#
# class MainPage(webapp2.RequestHandler):
#   def get(self):
#       self.response.headers['Content-Type'] = 'text/plain'
#       self.response.out.write('Please replace me with a decent WSGI App Framework such as Flask')
#
# app = webapp2.WSGIApplication([('/', MainPage)],
#                               debug=True)
# """ > app00/wsgi_app.py
#
# # testing the mini app engine
# python dev_appserver.py gae_app/
# python ./google_appengine/dev_appserver.py gae_app/
# # #


# # #
# add a handy alias so users can run the sdk with sensible defaults
alias runserver="dev_appserver.py /home/vagrant/app --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /home/vagrant/storage --skip_sdk_update_check"
# # #
