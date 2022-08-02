import socket               
 
sock = socket.socket()
 
host = "192.168.50.31" #ESP32 IP in local network
port = 80               #ESP32 Server Port    
 
sock.connect((host, port))
 
message = "Hello World"
message = message.encode("ascii")
sock.send(message)
 
data = ""       
 
while len(data) < len(message):
    temp = sock.recv(1)
    temp = temp.decode("ascii")
    data += temp
 
print(data)
 
sock.close()
