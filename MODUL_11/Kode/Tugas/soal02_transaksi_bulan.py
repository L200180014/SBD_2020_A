import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()
query = ("SELECT id_nasabahFK, jenis_transaksi, tanggal, jumlah "
         "FROM transaksi WHERE tanggal BETWEEN '2009-10-01' AND '2009-12-31'")

cursor.execute(query)
for (id_nasabahFK, jenis_transaksi, tanggal, jumlah) in cursor:
    print("nasabah dengan ID {} bertransaksi {} tanggal {:%d %b %Y} sejumlah {}".format(
        id_nasabahFK, jenis_transaksi, tanggal, jumlah))

cursor.close()
cnx.close()
