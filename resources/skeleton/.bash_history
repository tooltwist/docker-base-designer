rm ~/server/.fip-destination 
set -o vi
cat ~/server/.fip-destination 
cd serverkit/fip/
ls -ltr
vi fipserver.log
cd 
pwd
cd ~/server
mkdir protected
touch protected/pre_commit.sh
touch protected/post_commit.sh
vi protected/p*
cd -
cd ~/serverkit/fip/
tail -f fipserver.log
chmod +x ~/server/protected/*
tail -f fipserver.log
cd
cd server/tomcat/bin/
l
./startup.sh 
cd ../logs/
tail -f catalina.out 
bg
cd -
./shutdown.sh 
./startup.sh 
ps
ps -ef
ls -la
stop
cat .bashrc 
cat .profile 
. serverkit/tooltwist_rc 
mkdir bin
touch bin/setenv.sh
. serverkit/tooltwist_rc 
stop
ps -ef
start
ls -l
tar xvf /tmp/,sc
ls -l
man touch
cd site-conf/conf/
ls -l
log
cd
. serverkit/tooltwist_rc 
log
bg
start
pwd
cd site-conf/
export TOOLTWIST_HOME=`pwd`
start
vi ~/server/tomcat/bin/startup.sh 
vi ~/server/tomcat/bin/catalina.sh 
export JAVA_OPTS=-DTOOLTWIST_HOME=`pwd`
echo $JAVA_OPTS 
stop
start
stop
cd conf/
l
vi *
start
stop
grep junk-cli-1 *
vi logback.xml 
start
vi tooltwist.xml 
export JAVA_OPTS="-DTOOLTWIST_HOME=/home/tooltwist/site-conf -Djava.security.egd=file:/dev/./urandom"
start
stop
ps
ps -ef
kill -9 734
ps -ef
start
l ..
tail -f ../tooltwist.log 
bg
grep productionPublishDir *
stop
vi wbd.conf 
start
convert
which convert
vi wbd.conf 
stop
start
pwd
cd ..
ls -l
l bin/
rm tooltwist.log 
pwd
cd ..
tar cvf /tmp/,sc2 site-conf/
