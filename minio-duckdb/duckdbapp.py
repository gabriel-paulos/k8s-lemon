import os
import socket
import duckdb
from threading import Thread
import shutil
import gzip

HOST = '0.0.0.0'  # Standard loopback interface address (localhost)
PORT = 50000        # Port to listen on (non-privileged ports are > 1023)

def handle_client(conn):
    
    conn.sendall(str("hi there:").encode())

    while True:
        # Receive SQL query from client
        data = conn.recv(1024)
        if not data:
            break
        print(data)
        # Execute the query
        try:
            users_req = data.decode()
            command, users_req = users_req.split((" ",1))

            if(command == "set"):
                if users_req == '':
                    break

                while(True):
                    temp,users_req = users_req.split(";",1)
                    if temp.startswith("s3_region"):
                        s3_region= temp.split("s3_region ")[1]
                        cur.execute(f"SET s3_region='{s3_region}'")
                        
                    elif temp.startswith("s3_access_key_id"):
                        s3_access_key_id = temp.split("s3_access_key_id ")[1]
                        cur.execute(f"SET s3_access_key_id='{s3_access_key_id}'")

                    elif temp.startswith("s3_secret_access_key"):
                        s3_secret_access_key = temp.split("s3_secret_access_key ")[1]
                        cur.execute(f"SET s3_secret_access_key='{s3_secret_access_key}'")

                    elif temp.startswith("s3_url_style"):
                        s3_url_style = temp.split("s3_url_style ")[1]
                        cur.execute(f"SET s3_url_style='{s3_url_style}'")

                    elif temp.startswith("s3_endpoint"):
                        s3_endpoint = temp.split("s3_endpoint ")[1]
                        cur.execute(f"SET s3_endpoint='{s3_endpoint}'")
                    else:
                        conn.sendall("config option not recognized".encode())
                        break
                    
                    if users_req == '':
                        break
            
            elif(command == "query"):

                cur.execute(data.decode())
                result = cur.fetchall()

                # Send the result back to the client
                conn.sendall(str(result).encode())
            else:
               conn.sendall(str("Command not supported").encode())
        except Exception as e:
            # Send the error message back to the client
            conn.sendall(str(e).encode())

    # Close the connection
    conn.close()

def start_server():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind((HOST, PORT))
        s.listen()
        print(f'Server is listening on {HOST}:{PORT}')

        while True:
            conn, addr = s.accept()
            print('Connected by', addr)
            Thread(target=handle_client, args=(conn,)).start()

def setup():
    #unzip duckdb extension
    with gzip.open('httpfs.duckdb_extension.gz','rb') as f_in:
        with open('httpfs.duckdb_extension', 'wb') as f_out:
            shutil.copyfileobj(f_in, f_out)

    # Get the environment variables
    #s3_region = os.getenv('s3_region')
    #s3_access_key_id = os.getenv('s3_access_key_id')
    #s3_secret_access_key = os.getenv('s3_secret_access_key')
    #s3_url_style = os.getenv('s3_url_style')
    #s3_endpoint = os.getenv('s3_endpoint')

    con = duckdb.connect(':memory:')
    cur = con.cursor()

    duckdb.install_extension('httpfs')
    duckdb.load_extension('httpfs')
    # Set up S3 configurations
    cur.execute("install 'httpfs.duckdb_extension'")
    cur.execute("load 'httpfs.duckdb_extension'")
    #cur.execute(f"SET s3_region='{s3_region}'")
    #cur.execute(f"SET s3_access_key_id='{s3_access_key_id}'")
    #cur.execute(f"SET s3_secret_access_key='{s3_secret_access_key}'")
    #cur.execute(f"SET s3_url_style='{s3_url_style}'")
    #cur.execute(f"SET s3_endpoint='{s3_endpoint}'")


# Start the server
start_server()
