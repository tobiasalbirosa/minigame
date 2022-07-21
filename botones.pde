void ejecutarBotonesCirculares(String descripcion) {
  switch (descripcion) {
  case "Jugar":
    estado = 1;
    reiniciarValoresDelJuego();
    iniciarEsmeraldas();
    break;
  case "Creditos":
    estado = 4;
    break;
  case "Inicio":
    estado = 0;
    break;
  case "Siguiente":
    estado = 4;
    break;
  default:
    break;
  }
}
String corroborarBotonesCirculares(int x, int y, int tam, String Descripcion) {
  if (dist(x, y, mouseX, mouseY) < tam / 2) {
    if (mousePressed) {
      ejecutarBotonesCirculares(Descripcion);
      return "Pressed";
    } else {
      return "Sobre";
    }
  } else {
    return "Normal";
  }
}
void switchDeBotones(int x, int y, int tam, String texto, String estadoDelBoton) {

  color colorA, colorB;
  colorA = color(120, 120, 255, 255);
  colorB = color(255, 255, 255, 255);

  switch (estadoDelBoton) {
  case "Normal":
    colorA = color(120, 120, 255, 255);
    colorB = color(255, 255, 255, 255);
    break;
  case "Sobre":

    colorA = color(255, 255, 255, 255);
    colorB = color(120, 120, 255, 255);

    break;
  case "Pressed":
    colorA = color(0, 255, 0, 255);
    colorB = color(120, 120, 255, 255);
    break;

  default:

    break;
  }
  pushStyle();
  fill(colorA);
  circle(x, y, tam);
  fill(colorB);
  text(texto, x, y);
  popStyle();
}
void dibujarBotonCircular(int x, int y, int tam, String texto) {
  switchDeBotones(x, y, tam, texto, corroborarBotonesCirculares(x, y, tam, texto));
}
