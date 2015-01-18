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


echo "** Building and run image"
docker build -t tooltwist-ttdemo-image . \
&& docker run -it --rm -p 5080:8080 -p 5093:39393 -p 5022:22 --name tooltwist-ttdemo tooltwist-ttdemo-image
