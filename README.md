Centos6 with ssh; build on a network behind proxy; 
============

Simple CentOS docker image with SSH access


Usage
-----

To create the image `mursilsayed/centos` with one tag per CentOS release, execute the following commands:

	git checkout centos6
	docker build -t mursilsayed/centos:centos6 .


Running centos
--------------------

Run a container from the image you created earlier binding it to port 2222 in all interfaces:

	sudo docker run -d -p 0.0.0.0:2222:22 mursilsayed/centos:centos6

