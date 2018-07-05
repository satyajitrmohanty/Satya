#!/bin/bash
#!/bin/sh
#!/bin/ksh
#$1 is the file name in quotes
#usage:sh toFTP.sh '*SSS*.txt'
HOST='192.168.1.36'
USER="ftpsatya"
PASSWD="ftpsatya"
SRCFILEPATH="C:/Users/Satya/Desktop/talendtest/"
FILE=$1
REMOTEPATH='/'

ftp -in $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD

cd $REMOTEPATH
mput $SRCFILEPATH/$FILE

quit
END_SCRIPT
#echo "File  transfered to FTP server location"
exit 0