#!/bin/dash
# Name: nikto-upload
# Purpose: Import xml files from nikto into Dradis
# Version 0.1
# Updated: June 21, 2017
# Needs to execute from Dradis folder or bundle will not work
# Author: @jfersec
find /root/nikto-runs/ -name *.xml -exec bundle exec thor dradis:plugins:nikto:upload {} \;
