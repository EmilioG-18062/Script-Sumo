// ==============================================
// LIBRERIAS
// ==============================================
#include "libs.h"

// ==============================================
// VARIABLES
// ==============================================
char msj[32];

// SSID y contraseña del WiFi
char* ssid = "Robotat";
char* password =  "iemtbmcit116";
int port = 80;

WiFiServer wifiServer(port);

// ==============================================
// PROTOTIPO DE FUNCIONES
// ==============================================

// ==============================================
// SETUP
// ==============================================
void setup() { 
  // Iniciar serial
  Serial.begin(115200);
  // Iniciar WiFi
  startWifi(ssid, password);
  // Iniciar Server
  wifiServer.begin();
}

// ==============================================
// LOOP
// ==============================================
void loop() {
 // Crear conexion con clientes
  WiFiClient client = wifiServer.available();
 
  if (client) {
 
    while (client.connected()) {
      int i = 0;
      
      while (client.available()>0) {
        msj[i] = client.read(); 
        i+=1;
      }
      // Convertir mensaje a movimiento del dron
      
    }
  }

  else{
    Serial.println("Client unavailable");
  }
}

// ==============================================
// FUNCIONES
// ==============================================
