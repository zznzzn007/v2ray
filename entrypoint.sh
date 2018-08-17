#cd /v2raybin
#echo -e "$CONFIG_JSON" > config.json
#if [ "$CERT_PEM" != "$KEY_PEM" ]; then
#  echo -e "$CERT_PEM" > cert.pem
#  echo -e "$KEY_PEM"  > key.pem
#fi
cd /v2ray
wget http://storage.googleapis.com/v2ray-docker/v2ray 
wget http://storage.googleapis.com/v2ray-docker/v2ctl
wget http://storage.googleapis.com/v2ray-docker/geoip.dat
wget http://storage.googleapis.com/v2ray-docker/geosite.dat

chmod +x v2ray v2ctl
sed -i "s/your_uuid/$UUID/g" config.json
./v2ray
