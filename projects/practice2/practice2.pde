Environment NumberOne;
int writingStartTime;
boolean showWriting = true;

void setup () {
  size(800, 600);
  background(255, 255, 255);
  NumberOne = new Environment();
  writingStartTime = millis();  // Start timer for writingOne
}

void draw () {
  background(255); // Clear screen each frame
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

    // Only show writingOne for the first second
    if (millis() - writingStartTime < 1000) {
      image(writingOne, 450, 200, 300, 150);
    }
  }
}
