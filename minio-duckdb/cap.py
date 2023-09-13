import os
import socket
from threading import Thread


HOST = '0.0.0.0'  # Standard loopback interface address (localhost)
PORT = 3000        # Port to listen on (non-privileged ports are > 1023)

def handle_client(conn):
    while True:
        conn.sendall(str("hi there:").encode())
        
        try:
            data = conn.recv(1024).decode('utf-8')
            if not data:
                break
            data=data.strip()
        except Exception as e:
            print(str(e))
        
        co = data.split(' ',1)
        if len(co) == 1:
            conn.sendall(str('no args after command\n').encode())
            continue
        print(co)
        if co[0] == 'set':
            conn.sendall(str('got a set\n').encode())
            temp = co[1]  
            while(True):
                    print('b4 split', temp)
                    temp = temp.split(";",1)
                    print(temp)    
                    if temp[0].startswith("s3_region"):
                        s3_region= temp[0].split("s3_region ")[1]
                        #cur.execute(f"SET s3_region='{s3_region}'")
                        conn.sendall(str(f'rEceive s3_region {s3_region}\n').encode())
                    elif temp[0].startswith("s3_access_key_id"):
                        s3_access_key_id = temp[0].split("s3_access_key_id ")[1]
                        #cur.execute(f"SET s3_access_key_id='{s3_access_key_id}'")

                    elif temp[0].startswith("s3_secret_access_key"):
                        s3_secret_access_key = temp[0].split("s3_secret_access_key ")[1]
                        #cur.execute(f"SET s3_secret_access_key='{s3_secret_access_key}'")

                    elif temp[0].startswith("s3_url_style"):
                        s3_url_style = temp[0].split("s3_url_style ")[1]
                        #cur.execute(f"SET s3_url_style='{s3_url_style}'")

                    elif temp[0].startswith("s3_endpoint"):
                        s3_endpoint = temp[0].split("s3_endpoint ")[1]
                        #cur.execute(f"SET s3_endpoint='{s3_endpoint}'")
                    else:
                        conn.sendall(str("Config option not recognized\n").encode())
                        break
                    
                    #no more options
                    if len(temp) == 0 or temp[1] == '':
                        break
     
                    temp = temp[1]
        elif co[0] == 'query':
            conn.sendall(str('got a qu\n').encode())
        
        else:
            conn.sendall(str('Command not supported\n').encode())
        
        #conn.sendall(str(data).encode())
def setup():
    #unzip duckdb extension
    #with gzip.open('httpfs.duckdb_extension.gz','rb') as f_in:
    #    with open('httpfs.duckdb_extension', 'wb') as f_out:
    #        shutil.copyfileobj(f_in, f_out)

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
    #cur.execute("install 'httpfs.duckdb_extension'")
    #cur.execute("load 'httpfs.duckdb_extension'")
    #cur.execute(f"SET s3_region='{s3_region}'")
    #cur.execute(f"SET s3_access_key_id='{s3_access_key_id}'")
    #cur.execute(f"SET s3_secret_access_key='{s3_secret_access_key}'")
    #cur.execute(f"SET s3_url_style='{s3_url_style}'")
    #cur.execute(f"SET s3_endpoint='{s3_endpoint}'")



def start_server():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind((HOST, PORT))
        s.listen()
        print(f'Server is listening on {HOST}:{PORT}\n')

        while True:
            conn, addr = s.accept()
            print('Connected by', addr)
            Thread(target=handle_client, args=(conn,)).start()

start_server()
