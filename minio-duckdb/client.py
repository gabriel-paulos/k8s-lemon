import socket
import argparse
import sys

def client_program():
    #host = socket.gethostname()  # as both code is running on same pc
    #port = 5000  # socket server port number
    
    while True:
        host = input("Hello, please connect to a server:\n").split(":",1)
        if len(host) > 1:
            break
        print("Missing hostname or port\n")
    
    host,port = host[0],int(host[1])
    client_socket = socket.socket()  # instantiate
    client_socket.connect((host, port))  # connect to the server
    
    print("Connection successful\n")

    message = input("Enter command:\n")  # take input

    while message.lower().strip() != 'bye':
        
        if message.lower().strip() == 'help':
            print("Accepted commands are: set or query\n") 

        client_socket.send(message.encode())  # send message
        data = client_socket.recv(1024).decode()  # receive response

        print('Received from server: ' + data)  # show in terminal

        message = input(" -> ")  # again take input

    client_socket.close()  # close the connection

if __name__ == "__main__":
    if len(sys.argv) > 1:
        parser = argparse.ArgumentParser()

        parser.add_argument("-r","--region",required=False, help="s3_region")
        parser.add_argument("-k","--key", required=False, help="access_key_id")
        parser.add_argument("-s", "--secret", required=False, help="secret_access_key")
        parser.add_argument("-d", "--style",required=False, help="url_style")
        parser.add_argument("-e", "--endpoint",required=False,help="s3_endpoint")
        #s3_region,s3_access_key_id, s3_secret_access_key_id, url_style, s3_endpoint= parser.parse_args()
        args = parser.parse_args()

        s3_region,s3_access_key_id, s3_secret_access_key_id, url_style, s3_endpoint= args.region,args.key, args.secret, args.style, args.endpoint
        print(s3_region,s3_access_key_id, s3_secret_access_key_id, s3_endpoint)

    client_program()
