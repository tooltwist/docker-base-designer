#!/bin/sh
#
#	Start the server for FIP (File Installation Protocol)
#
#	This script should be started and kept running by rinit.
#	See https://github.com/phusion/baseimage-docker#adding-additional-daemons
#

echo Starting fipserver
cd /home/tooltwist/fip
export JAVA_OPTS="${JAVA_OPTS} -Djava.security.egd=file:/dev/urandom"
#/sbin/setuser tooltwist ./fipserver -v 39393 2>&1 >> /home/tooltwist/site-conf/logs/fipserver.log
/sbin/setuser tooltwist java -jar fipserver-1.0.2-shadow.jar -v 39393 2>&1 >> /home/tooltwist/site-conf/logs/fipserver.log
