#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d24ae3a6-49c6-4f7e-89da-6093027fd41a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

