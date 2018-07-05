#!/bin/sh
#!/bin/ksh
#!/bin/bash

#$1 is the file name in quotes
#usage:sh fromftp.sh '*SSS*.txt'


HOST='192.168.1.36'
USER="ftpsatya"
PASSWD="ftpsatya"
SRCFILEPATH="C:/Users/Satya/Desktop/talendtest"
REMOTEPATH='/'
ftp -in $HOST > temp <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd $REMOTEPATH
ls
quit
END_SCRIPT

cat temp | sed 's|.\{56\}||' > $SRCFILEPATH/list.txt
echo 'File names copied to list.txt'
exit 0