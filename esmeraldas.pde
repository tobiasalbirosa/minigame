void iniciarEsmeraldas() {
  esmeraldaX = new int[5];
  esmeraldaY = new int[5];
  esmeraldaCapturada = new boolean[5];
  for (int i = 0; i < 5; i++) { 
    int randomX = floor(random(0, width));
    int randomY = floor(random(0, height));
    esmeraldaX[i] = randomX;
    esmeraldaY[i] = randomY;
    esmeraldaCapturada[i] = false;
  }
}
void dibujarEsmeraldas() {

  pushStyle();
  fill(0, 255, 0);
  for (int i = 0; i < 5; i++) { 
    if (comprobarColisiones(personajeX, personajeY, esmeraldaX[i], esmeraldaY[i], 20, 20)) {
      esmeraldaCapturada[i] = true;
      esmeraldaX[i] = -1000;
      esmeraldaY[i] = -1000;
      esmeraldasCapturadas++;
    }
    if (!esmeraldaCapturada[i]) {
      circle(esmeraldaX[i], esmeraldaY[i], 20);
    }
  }
  popStyle();
}
