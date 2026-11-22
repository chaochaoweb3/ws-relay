#!/bin/sh
sed -i "s/__PORT__/${PORT:-8080}/g; s/__UUID__/${UUID}/g" /usr/local/xray/config.json
exec /usr/local/xray/xray run -config /usr/local/xray/config.json
