class Enemigo{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private color colorear;
  
  public Enemigo(){
    imagen = loadImage("Burbujas.png");
  }
  
  public Enemigo(PVector posicion, PVector velocidad, color colorear){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.colorear=colorear;
    this.imagen = loadImage("Burbujas.png");
  }
  
  public void dibujar(){
    tint(colorear);
    image(imagen,this.posicion.x,this.posicion.y);
    imagen.resize(100,100);
  }
  
  public void mover(){
    if(this.posicion.x<=width){
      this.posicion.x+=this.velocidad.x;
    }
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    } 
  }
  
  public void rebotar(){
    if(this.posicion.x >= width || this.posicion.x <= 0){
      this.velocidad.x=-this.velocidad.x;  
    }
    if(this.posicion.y >= height || this.posicion.y <= 0){
      this.velocidad.y=-this.velocidad.y;  
    }
  }
}
