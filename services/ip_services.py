import psycopg2
import socket
ip=socket.socket.gethostname() 
conn = psycopg2.connect( host=my-release-postgresql, user=db_admin, password=secret, dbname=ip_database)
cursor = connection.cursor()
cursor.execute("INSERT INTO ip (ip)")
conn.commit()
conn.close()