#DarkMarket
=======

DarkMarket is a safe untouchable marketplace for the planet Earth. Distributed free from tyranny and protected by the GPL.

`pip install pyzmq`
`pip install tornado`
`pip install pyelliptic`

INSTALL python-obelisk
1) git clone https://github.com/darkwallet/python-obelisk
2) python setup.py install


## OSX Users

For OSX there is a CLANG error when installing pyzmq but you can use the following command to ignore warnings:

`sudo ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future easy_install pyzmq`

## Issues with ./run_dev.sh
If you're getting errors saying `ZMQError: Can't assign requested address` then you probably need to bring up some loopback adapters for those 
IPs higher than 127.0.0.1.

sudo ifconfig lo0 alias 127.0.0.2 up
sudo ifconfig lo0 alias 127.0.0.3 up
sudo ifconfig lo0 alias 127.0.0.4 up
