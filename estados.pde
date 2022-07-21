void estados() {
  if (estado == 0) {
    estadoDescripcion = "Inicio";
    colorDeFondo = color(120, 120, 255, 255);
    colorDeTexto = color(0, 0, 0, 255);
  } else if (estado == 1) {
    estadoDescripcion = "Juego";
    colorDeFondo = color(0, 0, 0, 255);
    colorDeTexto = color(120, 120, 255, 255);
  } else if (estado == 2) {
    estadoDescripcion = "Ganaste";
    colorDeFondo = color(120, 120, 255, 255);
    colorDeTexto = color(0, 0, 0, 255);
  } else if (estado == 3) {
    estadoDescripcion = "Perdiste";
    colorDeFondo = color(0, 0, 0, 255);
    colorDeTexto = color(120, 120, 255, 255);
  } else if (estado == 4) {
    estadoDescripcion = "Creditos";
    colorDeFondo = color(120, 120, 255, 255);
    colorDeTexto = color(0, 0, 0, 255);
  } 

  pantallas();

}
