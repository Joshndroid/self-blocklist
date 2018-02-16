#Remove old list
rm adaway.txt
#grab the malwaredomains hosts files
wget http://mirror1.malwaredomains.com/files/justdomains
#Generate easy adaway compatible file
sed -e 's/^/127.0.0.1 /' justdomains > adaway.txt
rm justdomains
