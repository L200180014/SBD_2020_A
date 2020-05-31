import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()
query = 'DELETE FROM transaksi WHERE no_transaksi=52'

cursor.execute(query)
cnx.commit()
print(cursor.rowcount, "record(s) deleted")
cnx.close()
