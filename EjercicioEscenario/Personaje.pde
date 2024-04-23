class Personaje{
  private PVector posicion;
  private PImage imagen;
  
  public Personaje(){
    imagen = loadImage("mariposa.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen, mouseX, mouseY);
    imagen.resize(80,80);
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  } 
}
