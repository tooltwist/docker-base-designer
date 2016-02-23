#
#	Setup a blank server, ready for the ToolTwist designer to be installed.
#

FROM tooltwist/docker-base-tooltwist

USER root
RUN apt-get update
RUN apt-get install -q -y imagemagick
RUN apt-get install -q -y nodejs npm
RUN apt-get install -q -y git git-core
RUN apt-get install -q -y ruby1.9.1
RUN apt-get install -q -y curl vim

# Install ToolTwist CLI
RUN npm install -g tooltwist

# Upon server statup, login as user tooltwist (so site-conf/bin/setenv.sh is run) and start tomcat.
#CMD [ "su", "tooltwist", "-c", ". .tooltwist_rc; cd server/tomcat/bin; ./startup.sh;" ]
