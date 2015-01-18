#!/bin/bash
#
#	Start tomcat.
#
#	In a Docker image based on phusion/baseimage, this command is run during 
#	system startup. The Dockerfile copies it into /etc/my_init.d, where it
#	gets run by /sbin/my_init, the start point for the container.
#
su - tooltwist -c start
