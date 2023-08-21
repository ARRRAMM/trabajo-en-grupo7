class Boton {
  float x, y; // Posición del botón
  float ancho, alto; // Tamaño del botón
  String etiqueta; // Etiqueta del botón
  
  // Constructor de la clase Boton
  Boton(float x, float y, float ancho, float alto, String etiqueta) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
    this.etiqueta = etiqueta;
  }
  
  // Método para dibujar el botón
  void dibujar() {
    stroke(255);
    fill(0);
    rect(x, y, ancho, alto);
    fill(255);
    textAlign(CENTER, CENTER);
    text(etiqueta, x + ancho/2, y + alto/2);
  }
  
  // Método para verificar si se hizo clic en el botón
  boolean clicEnBoton() {
    if (mouseX >= x && mouseX <= x + ancho && mouseY >= y && mouseY <= y + alto) {
      return true;
    } else {
      return false;
    }
  }
}

Boton boton;

void setup() {
  size(800, 600);
  boton = new Boton(300, 200, 200, 100, "Haz clic");
}

void draw() {
  background(0);
  boton.dibujar();
}

void mouseClicked() {
  if (boton.clicEnBoton()) {
    println("hola compañeros y compañeras ");
    // Realizar la acción asociada al botón aquí
  }
}
