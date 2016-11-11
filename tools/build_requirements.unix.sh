echo "Install OpenSSL@1.0.2g"
wget https://github.com/openssl/openssl/archive/OpenSSL_1_0_2g.tar.gz -O OpenSSL_1_0_2g.tar.gz
tar -xf OpenSSL_1_0_2g.tar.gz && cd openssl-OpenSSL_1_0_2g
./config
make && sudo make install_sw
cd .. && rm -rf openssl-OpenSSL_1_0_2g && rm -f OpenSSL_1_0_2g.tar.gz

echo "Install CURL@7.4.8"
wget https://github.com/curl/curl/archive/curl-7_48_0.tar.gz -O curl-7_48_0.tar.gz
tar -xf curl-7_48_0.tar.gz && cd curl-curl-7_48_0
mkdir build && cd build && cmake ..
make && sudo make install
cd ../.. && rm -rf curl-curl-7_48_0 && rm -f curl-7_48_0.tar.gz
