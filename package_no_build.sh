echo "wireguird: cleaning..."
rm -r ./build/wireguird_amd64.deb
rm -r ./deb/opt/wireguird/
mkdir -p ./deb/opt/wireguird

echo "wireguird: building go binary..."
mv wireguard ./deb/opt/wireguird/

echo "wireguird: copying icons..."
cp -r ./Icon/ ./deb/opt/wireguird/

echo "wireguird: building debian package..."
mkdir ./build/
dpkg-deb --root-owner-group --build ./deb ./build/wireguird_amd64.deb
echo "wireguird: done"