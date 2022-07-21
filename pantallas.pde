void pantallas() {
  dibujarFondoDePantalla();
  dibujarInterfazYTextos();
}
void dibujarFondoDePantalla() {
  pushStyle();
  fill(colorDeFondo);
  rect(0, 0, width, height);
  popStyle();
}
void dibujarInterfazYTextos() {
  pushStyle();
  fill(colorDeTexto);
  if (estado == 0) {
    reiniciarCreditos();
    text(estadoDescripcion, width/2, height/10);

    dibujarBotonCircular(width/4, height - height / 10, width/5, "Jugar");
    dibujarBotonCircular(width - width/4, height - height / 10, width/5, "Creditos");
    
  }
  if (estado == 1) {
    text(estadoDescripcion, width/2, height/10);
    juego();
  }
  if (estado == 2) {
    text(estadoDescripcion, width/2, height/10);
    dibujarBotonCircular(width/8, height - height / 5, width/5, "Siguiente");
  }
  if (estado == 3) {
    text(estadoDescripcion, width/2, height/10);
    dibujarBotonCircular(width/8, height - height / 5, width/5, "Siguiente");
  }
  if (estado == 4) {
    text(estadoDescripcion, width/2, height/10);

    String textoParaCreditos = "Videojuego \n Captura la esmeralda \n \n Produce: \n Tecno I \n Cursada de Invierno";
    textoParaCreditos+= "2022 \n \n Muchas gracias!";

    creditos(width/2, height, width, height, -1, 1, textoParaCreditos);
    dibujarBotonCircular(width/2, height - height / 5, width/5, "Inicio");
  }
  popStyle();
}
