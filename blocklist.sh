cd blocklist
wget -O blocklist.zip "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=zip"
unzip blocklist.zip
rm blocklist.zip
mv *.txt blocklist.p2p
cd ..
mv blocklist/* .