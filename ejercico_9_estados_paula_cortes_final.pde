//ejercicio estados

int INICIO= 0;
int estadoActual= INICIO;
int instrucciones = 1;
int personajes = 2;
int juego = 3;
int FINAL = 4;



Inicio inicio1;
Instrucciones instrucciones1;
Personajes personajes1;
Juego juego1;
Final final1;


void setup(){
  size(600,800);
  background(247,237,237);
  frameRate(30);
  }
  
  
void draw(){
 
    //Time
    fill(0,0,255);
    textSize(21);
    text( "TIME: " + millis()/1000, 650, 30);
 
 
    if (estadoActual== INICIO) {PImage Inicio;
    Inicio=loadImage("Inicio.png");
    Inicio.resize(600,800);
    image (Inicio,0,0);
    }
  
    if (estadoActual== instrucciones) {background (255); 
   instrucciones1 = new Instrucciones();}
    
    if (estadoActual== personajes) {background (#E4B7B4); 
    personajes1 = new Personajes();}
  
    if (estadoActual== juego) {background (#E4B7B4); 
    juego1= new Juego();}
  
    if (estadoActual== FINAL) {background (255);
    final1 = new Final();}
}
   
 
   
void mouseReleased(){
  //de inicio a intrucciones
  if(estadoActual == INICIO) {   
  if(mouseX>50 && mouseX<250 && mouseY<720 && mouseY>610) 
  {estadoActual= instrucciones;}
    
    //de inicio a personajes
    else if(mouseX>330 && mouseX<540 && mouseY<720 && mouseY>610) 
   {estadoActual= personajes;}
   
   //de inicio a jugar
  else if(mouseX>300 && mouseX<570 && mouseY<480 && mouseY>340) 
  {estadoActual= juego;}
  
  }
  
    //de intrucciones a inicio
    if(estadoActual == instrucciones) { 
    if(mouseX>0 && mouseX<125 && mouseY<50 && mouseY>0)
     {estadoActual= INICIO;} 
   }
  
   //de personajes a inicio
   if(estadoActual == personajes) {
    if(mouseX>0 && mouseX<125 && mouseY<50 && mouseY>0)
    {estadoActual= INICIO;} 
    }

  
}
  
