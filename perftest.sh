host="fabmedical-603146.mongo.cosmos.azure.com"
username="fabmedickYMqpoD1T7TL316Kc0rsuTyeRZG6ON0wotsr5IlZfy0Kc85Y2SNVKIIIQlbS7veGQ0nofBDOSGx51dKxEzinfw=="
password="kYMqpoD1T7TL316Kc0rsuTyeRZG6ON0wotsr5IlZfy0Kc85Y2SNVKIIIQlbS7veGQ0nofBDOSGx51dKxEzinfw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done