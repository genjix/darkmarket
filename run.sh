# Store config file
STOREFILE=ppl/caedes

# Location of log directory
LOGDIR=logs

if which python2 2>/dev/null; then
    PYTHON=python2
else
    PYTHON=python
fi


if [ ! -d "$LOGDIR" ]; then
  mkdir $LOGDIR
fi
touch $LOGDIR/server.log

# Primary Market
$PYTHON node/tornadoloop.py $STOREFILE 127.0.0.1 > $LOGDIR/server.log &

# Demo Peer Market
sleep 1
touch $LOGDIR/demo_peer.log
$PYTHON node/tornadoloop.py $STOREFILE 127.0.0.2 tcp://127.0.0.1:12345 > $LOGDIR//demo_peer.log &

# Open the browser if -q is not passed:
if ! [ $1 = -q ]; then
    xdg-open http://localhost:8888
    xdg-open http://localhost:8889
fi
