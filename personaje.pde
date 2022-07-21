void personaje(float x, float y, float tam, String palabra) {
  caminar();
  ellipse(x, y, tam, tam);
}


void caminar() {

  if (asciende == true) {
    personajeY -=1 * personajeVel;

    if (izquierda == true) {
      personajeX -=1 * personajeVel;
    }
    if (derecha == true) {
      personajeX +=1 * personajeVel;
    }
  }
  if (desciende == true) {
    personajeY +=1 * personajeVel;
    if (izquierda == true) {
      personajeX -=1 * personajeVel;
    }
    if (derecha == true) {
      personajeX += 1 * personajeVel;
    }
  }

  if (izquierda == true) {
    personajeX -=1 * personajeVel;
  }
  if (derecha == true) {
    personajeX += 1 * personajeVel;
  }

  limites();
}

void limites() {
  if (personajeX - tamPersonaje/2 > width) {
    personajeX = 0 - tamPersonaje/2;
  } else if (personajeX + tamPersonaje/2 < 0 ) {
    personajeX = width - tamPersonaje/2;
  }

  if (personajeY - tamPersonaje/2 > height) {
    personajeY = 0 - tamPersonaje/2;
  } else if (personajeY + tamPersonaje/2 < 0 ) {
    personajeY = height - tamPersonaje/2;
  }
}
