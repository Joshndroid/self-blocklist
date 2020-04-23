#Remove old list and files
rm adaway.txt
rm justdomains
rm domains
#Grab the malwaredomains hosts files
wget http://mirror1.malwaredomains.com/files/justdomains.zip
unzip justdomains.zip justdomains
rm justdomains.zip
#grab the coin-hive domains files
wget http://raw.githubusercontent.com/Marfjeh/coinhive-block/master/domains
#merge the files together
cat mylist justdomains domains > merged
#Generate easy adaway compatible file
sed -e 's/^/0.0.0.0 /' merged > adaway.txt
#remove temp downloaded domain and merged files
rm merged
