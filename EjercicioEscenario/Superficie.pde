class Superficie{
  private PVector posicion;
  private int ancho;
  private int alto;
  
  public Superficie(PVector posicion,int ancho,int alto){
    this.posicion = posicion;
    this.ancho = ancho;
    this.alto = alto;  
  }
  
  public void dibujar(){
    int anchoBloque = 50;
    int altoBloque = 30;
    int totalBloqueH = this.ancho / anchoBloque;
    int totalBloqueV = this.alto / altoBloque;
    
    for (int contBloqueH = 0; contBloqueH < totalBloqueH; contBloqueH++){
      for (int contBloqueV = 0; contBloqueV < totalBloqueV; contBloqueV++){
        stroke(#5484ab);
        fill(#24567d);
        rect(this.posicion.x + contBloqueH * anchoBloque, this.posicion.y + contBloqueV * altoBloque, anchoBloque, altoBloque);
      }
    }
  }  
}
