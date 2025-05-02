Environment NumberOne;
 
void setup () {
  size(800, 600);
  background(255, 255, 255);
  NumberOne = new Environment();
}
 
void draw () {
  NumberOne.Oven();
} 
class Environment {
  PImage backgroundPizza;
  PImage writingOne;
 
  Environment() {
    backgroundPizza = loadImage("PizzaOven.png");
    writingOne = loadImage("VanessasPizzaria.png");
  }
 
  void Oven() {
    image(backgroundPizza, 20, 0, 400, height);
    image(writingOne, 450, 200, 300, 150);
    
  }
}
