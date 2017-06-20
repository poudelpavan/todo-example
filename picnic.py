import sqlite3
from bottle import route, run, template

@route('/picnic')
def show_picnic():
	db = sqlite3.connect('picnic.db')
	c = db.cursor()
	c.execute("SELECT item, quantity FROM picnic")
	data = c.fetchall()
	c.close()
	output = template('bring_to_picnic', rows = data)
	return output

run(host='localhost', port=8080)