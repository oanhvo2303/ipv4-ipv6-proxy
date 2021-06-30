{
upload_proxy() {
    cd $WORKDIR
    local PASS=123456
    zip --password $PASS phamgia.zip proxy.txt
    URL=$(curl -F "file=@phamgia.zip" https://file.io)

    echo "Proxy is ready! Format IP:PORT:LOGIN:PASS"
    echo "Download zip archive from: ${URL}"
    echo "Password: ${PASS}"
    }
