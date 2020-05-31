from datetime import date, datetime, timedelta
import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()
query = ("SELECT id_nasabahFK, jenis_transaksi, tanggal, jumlah "
         "FROM transaksi WHERE tanggal=CURDATE()")
cursor.execute(query)
for (id_nasabahFK, jenis_transaksi, tanggal, jumlah) in cursor:
    print("nasabah dengan ID {} melakukan transaksi {} pada {:%d %b %y} sejumlah {}".format(
        id_nasabahFK, jenis_transaksi, tanggal, jumlah))
cursor.close()
cnx.close()
