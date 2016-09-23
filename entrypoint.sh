#!/bin/sh

echo "$PRIVATE_KEY" > /root/.ssh/tunnel_private_key
chmod 600 /root/.ssh/tunnel_private_key
echo "$TUNNEL_ADDRESS $TUNNEL_HOST_KEY" > /root/.ssh/known_hosts

/usr/bin/ssh -i /root/.ssh/tunnel_private_key -T -N -L *:$LOCAL_PORT:$REMOTE_ADDRESS:$REMOTE_PORT -p $TUNNEL_PORT $@ $TUNNEL_USER@$TUNNEL_ADDRESS