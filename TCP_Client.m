t = tcpclient("192.168.50.31", 80);

i = 1;

while i == 1
    
end

data = "Hola mundo";

write(t,data)

temp = read(t, 10, "String")

clear t
echotcpip("off")    