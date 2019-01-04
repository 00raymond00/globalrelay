#!/usr/bin/env python
import MySQLdb
import datetime

ts= datetime.datetime.now().strftime("%d %B %Y %H:%M:%S")
db = MySQLdb.connect(host="localhost",
                     user="demouser",
                     passwd="demopass")

cur = db.cursor()
cur.execute("SHOW databases")
databases = cur.fetchall()
dl = []

for i in databases:
    dl += i

if "demo" in dl:
    print ts + ": Success! Connected and demo exists!"
else:
    print ts + ": Error, please check mysql or mysqldump file"

db.close()
