PVector coordenadasRect;
int ancho, alto, distEntreRect;

public void setup() {
  size(440, 420);
  distEntreRect = 20;
  ancho = 40;
  alto = 20;
  coordenadasRect = new PVector(distEntreRect, distEntreRect);
}

public void draw() {
  background(#DECC86);
  dibujarRectangulos();
}

public void dibujarRectangulos() {
  
  fill(#FF0000);
  for (float y=coordenadasRect.y;y< height;y+=(alto+distEntreRect)) {
  for (float x=coordenadasRect.x;x< width;x+=(ancho+distEntreRect)) {
      rect(x, y, ancho, alto);
    }
  }
}
