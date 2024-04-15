
float x1=100, y1=100, x2=200, y2=400;
PImage linkImage; // Imagen de Link
PImage tesoroImage; // Imagen del tesoro
float distanciaTesoro=50;

void setup() {
  size(800, 600);
  linkImage = loadImage("link con espada.gif");
  tesoroImage = loadImage("tesoro.png");
  linkImage.resize(190, 190);
  tesoroImage.resize(80, 80);
    x1 = width/2; // Inicializar las coordenadas de Link al centro de la pantalla
  y1 = height/2;
  x2 = random(width); // Asignar coordenadas aleatorias al tesoro
  y2 = random(height);
}

void draw() {
  background(#F7DACF);
  
  // Calcular tamaño de los catetos de Link
  float coordenadaX = mouseX - x1; 
  float coordenadaY = mouseY - y1; 
  
  // Calcular la distancia entre Link y el tesoro
  float distancia = sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2)); 
  
  // Mostrar la distancia en la consola
  String textoDistancia = "La distancia es de: " + distancia; 
  println(textoDistancia);
  
  // Mostrar mensaje "¡Power-Up activado!" si Link está en la posición del tesoro
  if (distancia <= distanciaTesoro) {
    println("¡Power-Up activado!");
      
  }
  
  // Mostrar imágenes
  image(tesoroImage, x2, y2);
  image(linkImage, mouseX, mouseY); // Posición de Link sigue al mouse
  
  // Mostrar texto de coordenadas del mouse en pantalla
  String coordenadas = "X1: " + mouseX + ", Y1: " + mouseY;
fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadas, width, 0);
}

 
void mouseMoved(){
  // Actualizar las coordenadas de Link con la posición del mouse
  x1 = mouseX;
  y1 = mouseY;
}
