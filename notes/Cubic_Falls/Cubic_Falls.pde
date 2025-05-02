// This is the main filw
// I want to keep this file
// super basic and easy to understnad

// All the other fikes (tabs) will
// be topic-specific


void setup(){
  size(800, 800, P3D);
  setupLevelOne;

  
}

void draw(){
  LevelOne.display();

  
}

 
void setupLevelOne(){

   levelOne = new Subway();
 
 
}
class background{
  PImage backgroundSubway;
 
  Subway(){
    backgroundSubway = loadImage("background.jpg");
  }
   void display(){
     image(backgroundSubway, 0, 0);
     }
   }

 
 
class environment{
  environment(){
  }
  void init(){
    }
  }
  void update(){

  }
  void display(){
  }
