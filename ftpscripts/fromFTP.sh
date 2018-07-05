#!/bin/sh
#!/bin/ksh
#!/bin/bash

#$1 is the file name in quotes
#usage:sh fromftp.sh '*SSS*.txt'


HOST='192.168.1.36'
USER="ftpsatya"
PASSWD="ftpsatya"
SRCFILEPATH="C:/Users/Satya/Desktop/talendtest"
FILE=$1
REMOTEPATH='/'
ftp -in $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd $REMOTEPATH

lcd $SRCFILEPATH 

mget $FILE

quit
END_SCRIPT
echo "File  transfered from FTP server location"
exit 0