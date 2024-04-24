private Personaje mariposa;
private Enemigo burbuja;
private Superficie piso;
PImage escenario;


public void setup(){
  size(800,650);
  
  escenario = loadImage("ciudad.jpeg");
  piso = new Superficie(new PVector(0,height-60),width,height);
  mariposa = new Personaje(); 
  mariposa.setPosicion(new PVector(width/2,height/2));
  mariposa.setVelocidad(new PVector(10,0));
  burbuja = new Enemigo(new PVector(width/2,height/2),new PVector(5,5),color(#0D0B9D));
}

public void draw(){
  background(#24567d);
  noTint();
  image(escenario,width/2,height/2-100);
  escenario.resize(800,600);
  piso.dibujar();
  mariposa.dibujar();
  burbuja.dibujar();
  burbuja.mover();
  burbuja.rebotar();
}

public void mousePressed(){
  if(mouseButton == LEFT){
    mariposa.mover(0);
  }
  if(mouseButton == RIGHT){
    mariposa.mover(1);
  }
}
