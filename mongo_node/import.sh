#!/bin/sh

password=""
url=""
db=""
uri=""
db_local="aquassist-test"

# Delete local database
isDbExists=$(mongo localhost:27017 --eval 'db.getMongo().getDBNames().indexOf("'$db_local'")' --quiet)

if [ $isDbExists -gt -1 ]
then
    mongo $db_local --eval "db.dropDatabase()"
fi

echo "Process... \e[92mDUMP"
mongodump --uri $uri
echo "Precess... \e[33mRESTORE"
mongorestore --db=$db_local  "dump/..."

