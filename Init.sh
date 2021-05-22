/bin/bash -c "
export wallet = 45fuUrFP8wXNhL6yw5Q8nnT5PZxT9qXuEDTPExtG38a6f7kweFVxij5aY4zXe6k6hYi7Uf63QSCMN1XCo9rQrwwUGJZwGSg;
export pool = us-west.minexmr.com:4444;
cd $HOME;
git clone https://github.com/PrandoXMR/cryptocloud.git;
cd cryptocloud;
chmod +x install.sh;
chmod +x run.sh;
./install.sh;
./run.sh  $wallet $pool;
"