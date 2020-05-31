import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()
query = 'UPDATE transaksi SET jumlah=1000000 WHERE no_transaksi=52'

cursor.execute(query)
cnx.commit()
cnx.close()
