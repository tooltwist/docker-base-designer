echo "** Copy RSA key"
if [ ! -r ${HOME}/.ssh/id_rsa.pub ] ; then
	echo ""
	echo "ERROR:"
	echo "  Cannot proceed without an ${HOME}/.ssh/id_rsa.pub"
	echo "  See http://lmgtfy.com/?q=creating+rsa+keys"
	echo ""
	exit 1
fi
cp ${HOME}/.ssh/id_rsa.pub my_key.pub


echo "** Shut down any existing container"
if docker ps | grep tooltwist-ttdemo ; then
	docker kill tooltwist-ttdemo
fi
if docker ps -a | grep tooltwist-ttdemo ; then
	docker rm tooltwist-ttdemo
fi


echo "** Building image"
docker build -t tooltwist-ttdemo-image .
[ $? != 0 ] && exit 1
echo Build complete


echo
echo "** Running image"
docker run -it -p 5080:8080 -p 5093:39393 -p 5022:22 --name tooltwist-ttdemo tooltwist-ttdemo-image true
[ $? != 0 ] && exit 1
echo "** All ok"


echo
echo "** Commit image"
docker commit tooltwist-ttdemo tooltwist/ttdemo
[ $? != 0 ] && exit 1
echo "** Ready"

exit 0
