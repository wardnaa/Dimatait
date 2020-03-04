#/bin/bash

sleep 1
rm -rf /tmp/bases.txt # -> delet temporary file
rm -rf gungdewi # -> delet temporary file

sleep 1
mysql -u root -psociety -e "show databases;" > /tmp/bases.txt
    sleep 2
# generate mysql auto backup file
cat .system/date.txt >> output/dimata-cronjob.sh
# looping Database
        for data in $(cat /tmp/bases.txt); do
        	echo "" >> output/dimata-cronjob.sh
            sed 's+admin+'root'+g' .system/backup.config > nama.txt
            sed -e 's=dir=/mnt=' nama.txt > lokasi.txt 
            sed 's+pass+'society'+g' lokasi.txt > password.txt
            rm -rf nama.txt
            sed 's+databases+'$data'+g' password.txt > gungdewi.txt
            echo "mkdir -p  /mnt/backupdb-${data}" >> output/dimata-cronjob.sh
            cat gungdewi.txt >> output/dimata-cronjob.sh
            rm -rf gungdewi.txt
            rm -rf password.txt
            rm -rf lokasi.txt
         done