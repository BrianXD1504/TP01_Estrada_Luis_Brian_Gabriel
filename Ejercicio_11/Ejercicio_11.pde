String texto_consola = "escribe tu nombre:";
String mensaje_saludo = "";
String nombre="" ;
void setup() {
  size(400, 200);
   println(texto_consola);
}

void draw() {
  background(#000000); 
  textSize(30);
  fill(#7DF7DE); 
  text(mensaje_saludo,100,100);
}
void keyPressed() {
  nombre += key;
  println(nombre);
  
  if (key ==  '\n') {
    mensaje_saludo = ("Hola, " + nombre + " Bienvenido XD");
    println(mensaje_saludo);
  }
}
