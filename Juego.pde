class Juego {

float Mangulo = 0;
float Mincremento = 0.001;
float Mfreq = 200;
float Mamplitud = 25;
float w = 0;
float Mvelocidad = 6;

int posX;
int posY;
  
Juego(){  
   posX = width/2;
   posY = height-50;
}

void dibujarse(){
 //círculo moverse
  float winval = sin(Mangulo*Mfreq)*Mamplitud;
  float q = winval+height/2;
  
 //CARROS 
  w+= Mvelocidad;
  if (w > 1400){
    w = 0;
  }
  
 //PRIMERA FILA DE CARROS
  //carro rojo
  stroke(161,34,0);
  fill(225,48,0);
  rect(w, q+120, 130, 70);
  
  //carro verde
  stroke(161,34,0);
  fill(125,138,0);
  rect(w-400, q+120, 130, 70);
  
  //carro rosa
  stroke(161,34,0);
  fill(249,122,255);
  rect(w-800, q+120, 130, 70);
  
  
 //SEGUNDA FILA DE CARROS
  //carro rojo
  stroke(161,34,0);
  fill(225,48,0);
  rect(w+200, q-60, 130, 70);
  
  //carro verde
  stroke(161,34,0);
  fill(125,138,0);
  rect(w-200, q-60, 130, 70);
  
  //carro rosa
  stroke(161,34,0);
  fill(249,122,255);
  rect(w-600, q-60, 130, 70);
  
  
 //TERCERA FILA DE CARROS
  //carro rojo
  stroke(161,34,0);
  fill(225,48,0);
  rect(w, q-250, 130, 70);
  
  //carro verde
  stroke(161,34,0);
  fill(125,138,0);
  rect(w-400, q-250, 130, 70);
  
  //carro rosa
  stroke(161,34,0);
  fill(249,122,255);
  rect(w-800, q-250, 130, 70);
  
  
  //META
  stroke(195,121,0);
  fill(235,176,80);
  rect(270, 0, 80, 50);
  
  
  //CÍRCULO PERSONAJE
  stroke(227,137,23);
  fill(251,192,75);
  ellipse(posX, posY, 70, 70);
     
}


void moverArriba(){
  posY = posY - 5;
}
void moverAbajo(){
  posY = posY + 5;
}
void moverIzquierda(){
  posX = posX - 5;
}
void moverDerecha(){
  posX = posX + 5;
}

}


      
  
