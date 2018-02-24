#Remove old list and files
rm adaway.txt
rm justdomains
rm domains
#Grab the malwaredomains hosts files
wget http://mirror1.malwaredomains.com/files/justdomains
#grab the coin-hive domains files
wget https://raw.githubusercontent.com/Marfjeh/coinhive-block/master/domains
#merge the files together
cat justdomains domains > merged
#Generate easy adaway compatible file
sed -e 's/^/127.0.0.1 /' merged > adaway.txt
#remove temp downloaded domain and merged files
rm merged
