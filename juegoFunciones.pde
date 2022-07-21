void juego() {
  tiempoDeJuego();
  dibujarContador();
  personaje(personajeX, personajeY, tamPersonaje, "hola");
  dibujarEsmeraldas();

  //  dibujarPersonaje();
}
void dibujarContador() {
  float tamDeContador = map(tiempoDeJuego, 0, maximoDeTiempo, 0, width);
  pushStyle();
  fill(255);
  rect(0, 0, tamDeContador, height/10);
  fill(255, 0, 0);

  text("Tiempo para recolectar", width/3, 20);

  fill(0, 255, 0);
  text("Esmeraldas recolectadas: "+ esmeraldasCapturadas, width/3, 80);

  popStyle();
}

void tiempoDeJuego() {
  tiempoDeJuego--;
  if (tiempoDeJuego <= 0) {
    tiempoDeJuego = 0;
    evaluarJuego();
  }
}
void evaluarJuego() {
  if (tiempoDeJuego == 0 && esmeraldasCapturadas <= 4) {
    println("Perdiste");
    reiniciarValoresDelJuego();
    estado = 3;
  }
  if (esmeraldasCapturadas >= 5) {
    println("Ganaste");
    reiniciarValoresDelJuego();
    estado = 2;
  }
}
void reiniciarValoresDelJuego() {
  esmeraldasCapturadas = 0;
  personajeX = width/2;
  personajeY = height/2;
  tiempoDeJuego = maximoDeTiempo;
}
boolean comprobarColisiones(int x, int y, int x1, int y1, int rad, int rad1) {
  if (dist(x, y, x1, y1) < rad) {
    return true;
  } else {
    return false;
  }
}
