#include <WiFi.h>

char msj[32];

const char* ssid = "Robotat";
const char* password =  "iemtbmcit116";

WiFiServer wifiServer(80);
 
void setup() {
 
  Serial.begin(115200);
 
  delay(1000);
 
  WiFi.begin(ssid, password);
 
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi..");
  }
 
  Serial.println("Connected to the WiFi network");
  Serial.println(WiFi.localIP());
 
  wifiServer.begin();
}
 
void loop() {
 
  WiFiClient client = wifiServer.available();
 
  if (client) {
 
    while (client.connected()) {
      int i = 0;
      
      while (client.available()>0) {
        msj[i] = client.read();
        
        i+=1;
      }
      client.write(msj); 
      delay(10);
    }

    Serial.println(msj);
    client.stop();
    Serial.println("Client disconnected");
  }
}
