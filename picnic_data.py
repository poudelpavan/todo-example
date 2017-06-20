import sqlite3
db = sqlite3.connect('picnic.db')
db.execute("CREATE TABLE picnic (id INTEGER PRIMARY KEY, item CHAR(100) NOT NULL, quantity INTEGER NOT NULL)")
db.execute("INSERT INTO picnic (item, quantity) VALUES('bread', 4)")
db.execute("INSERT INTO picnic (item, quantity) VALUES('bread', 4)")
db.execute("INSERT INTO picnic (item, quantity) VALUES('bread', 4)")
db.execute("INSERT INTO picnic (item, quantity) VALUES('bread', 4)")
db.execute("INSERT INTO picnic (item, quantity) VALUES('bread', 4)")
db.commit()