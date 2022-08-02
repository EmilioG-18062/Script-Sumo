t = tcpclient("192.168.50.31", 80);

data = "Hola mundo";

write(t,data)

temp = read(t, 10, "String")

clear t
echotcpip("off")    