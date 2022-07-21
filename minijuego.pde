int estado = 0;
String estadoDescripcion = "Inicio";
String [] estados = {"Inicio", "Jugando", "Ganaste", "Perdiste", "Creditos"};
color colorDeFondo = color(0, 0, 0, 255);
color colorDeTexto = color(120, 120, 255, 255);
int globalCreditosY;
boolean asciende, desciende, izquierda, derecha;
int tiempoDeJuego, maximoDeTiempo;
int esmeraldasCapturadas = 0;
int personajeX, personajeY, personajeVel;
int tamPersonaje;
int [] esmeraldaX;
int [] esmeraldaY;
boolean [] esmeraldaCapturada;

void setup() {
  size(640, 640);
  textAlign(CENTER, CENTER);
  textSize(32);
  globalCreditosY = height;
  personajeVel = 2; 
  personajeX = width/2;
  personajeY = height/2;
  tamPersonaje = 20;
  maximoDeTiempo = 500;
}
void draw() {
  estados();
}

void keyPressed() {
  teclaPresioanda();
}
void keyReleased() {
  teclaSuelta();
}
