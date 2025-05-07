import processing.sound.*;

Environment NumberOne;
PImage pizzastation;
PImage PizzaCrust;
PImage PizzaCheese2;
PImage PizzaSauce;
PImage PizzaPepperoni; 
PImage PizzaMushrooms;
PImage PizzaSausage;
PImage PizzaGreenPeppers;
PImage PizzaRedPeppers;
PImage PizzaOlives;
PImage PizzaOnions;
PImage PizzaPineapple;
boolean showStart = true;
SoundFile file;

void setup() { 
  size(800, 600);
  NumberOne = new Environment();
  file = new SoundFile(this, "pizzamusic.mp3");
}

void draw() {
  background(255);
  if (showStart) {
    NumberOne.Oven();
  } else {
    image(pizzastation, 1, -100, 800, 800);
    image(PizzaCrust, 170, 50, 500, 500);

    if (PizzaSauce != null) {
      image(PizzaSauce, 170, 50, 500, 500);
    }
    if (PizzaCheese2 != null) {
      image(PizzaCheese2, 190, 70, 460, 460);
    }
    if (PizzaPepperoni != null) {
      image(PizzaPepperoni, 230, 100, 400, 400);
    }
    if (PizzaSausage != null) {
      image(PizzaSausage, 200, 100, 400, 400);
    }
    if (PizzaMushrooms != null) {
      image(PizzaMushrooms, 230, 100, 400, 400);
    }
    if (PizzaGreenPeppers !=null) {
      image(PizzaGreenPeppers, 230, 130, 350, 350);
    }
    if (PizzaRedPeppers !=null) {
      image(PizzaRedPeppers, 230, 130, 350, 350);
    }
    if (PizzaOlives !=null) {
      image(PizzaOlives, 230, 130, 350, 350);
    }
    if (PizzaOnions !=null) {
      image(PizzaOnions, 230, 130, 350, 350);
    }
    if (PizzaPineapple !=null) {
      image(PizzaPineapple, 230, 130, 350, 350);
    }
  }
}

void keyPressed() {
  if (key == '1' || key == '!') {
    if (showStart) {
      showStart = false;
      pizzastation = loadImage("pizzastation.png");
      PizzaCrust = loadImage("PizzaCrust.png");
      file.play();
    }
  } else if (!showStart) {
    if (key == 'c' || key == 'C') {
      PizzaCheese2 = loadImage("PizzaCheese2.png");
    } else if (key == 't' || key == 'T') {
      PizzaSauce = loadImage("PizzaSauce.png");
    } else if (key == 'p' || key == 'P') {
      PizzaPepperoni = loadImage("PizzaPepperoni.png");
    } else if (key == 's' || key == 'S') {
      PizzaSausage = loadImage("PizzaSausage.png");
    } else if (key == 'm' || key == 'M') {
      PizzaMushrooms = loadImage("PizzaMushrooms.png");
    } else if (key == 'g' || key == 'G') {
      PizzaGreenPeppers = loadImage("PizzaGreenPeppers.png");
    } else if (key == 'r' || key == 'R') {
      PizzaRedPeppers = loadImage("PizzaRedPeppers.png");
    } else if (key == 'o' || key == 'O') {
      PizzaOlives = loadImage("PizzaOlives.png");
    } else if (key == 'n' || key == 'N') {
      PizzaOnions = loadImage("PizzaOnions.png");
    } else if (key == 'l' || key == 'L') {
      PizzaPineapple = loadImage("PizzaPineapple.png");
    }
  }
}

class Environment {
  PImage backgroundPizza;
  PImage writingOne;
  PImage ptoplay;

  Environment() {
    backgroundPizza = loadImage("PizzaOven.png");
    writingOne = loadImage("VanessasPizzaria.png");
    ptoplay = loadImage("ptoplay.png");
  }

  void Oven() {
    image(backgroundPizza, 20, 0, 400, height);
    image(writingOne, 450, 50, 300, 150);
    image(ptoplay, 450, 300, 300, 200);
  }
}
