void creditos(int x, int y, int ancho, int alto, int dir, int vel, String texto) {

  pushStyle();
  fill(0);
  rect(0, 0, ancho, alto);
  fill(255);
  contador("creditos", vel);
  text(texto, x, globalCreditosY);
  popStyle();
}
void contador(String modo, int vel) {
  if (modo.equals("creditos")) {
    globalCreditosY -= vel;
    if (globalCreditosY <= 0) {
      globalCreditosY = 0;
    }
  }
}
void reiniciarCreditos() {
  globalCreditosY = height;
}
