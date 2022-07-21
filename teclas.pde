void teclaPresioanda() {

  if (key == 'W' || key == 'w') {
    asciende = true;
  }
  if (key == 'S'  || key == 's') {

    desciende = true;
  }
  if (key == 'A' || key == 'a') {
    izquierda = true;
  }
  if (key == 'D' || key == 'd') {
    derecha = true;
  }
}
void teclaSuelta() {

  if (key == 'W' || key == 'w') {
    asciende = false;
  }

  if (key == 'S'  || key == 's') {

    desciende = false;
  }

  if (key == 'A' || key == 'a') {

    izquierda = false;
  }

  if (key == 'D' || key == 'd') {

    derecha = false;
  }
}
