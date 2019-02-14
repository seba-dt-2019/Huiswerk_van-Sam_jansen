//kleuren
int RED = #FF0000, YELLOW = #FFFF00, GREEN = #00FF00, BLUE = #0000FF, WHITE = #FFFFFF, BLACK = #000000;


// vars
int sizeX = 1000;
int sizeY = 1000;

int RoboScale = 20;
int Robo = max (sizeX/RoboScale, sizeY/RoboScale);

int CurrentRX, CurrentRY, CurrentCX, CurrentCY;

boolean PickUp = false;



void settings() {
  size(sizeX, sizeY);
}


// draw robo & cargo in setup to give player a random pos of cargo
void setup(){
    background (BLACK);
    //DRAW ROBOT 
    fill (WHITE);
    rect (CurrentRX, CurrentRY, Robo, Robo); 
    //DRAW CIRKEL AT RANDOM POS
    fill (RED);
    ellipseMode (CORNER);
    CurrentCX = (ceil(random(width/Robo)) * Robo) - Robo; 
    CurrentCY = (ceil(random(height/Robo)) * Robo) - Robo; 
    ellipse (CurrentCX, CurrentCY, Robo, Robo);
}

void draw(){
      background (BLACK);
      ROBOT();
      CARGO();
}

void ROBOT()  {
  fill (WHITE);
  rect (CurrentRX, CurrentRY, Robo, Robo);
}

void CARGO() {
  if (PickUp == true) {
      CurrentCX = CurrentRX;
      CurrentCY = CurrentRY;
      fill (GREEN);
  }  else  {
      fill (RED);
  }
  ellipse (CurrentCX, CurrentCY, Robo, Robo);
}


void keyPressed() {
   boolean Contact = ((CurrentRX == CurrentCX) && (CurrentRY == CurrentCY)); //true if cirkel and robo are alligned
  
  //MOVEMENT ROBO
    switch (keyCode) {
        case LEFT:
            CurrentRX = constrain (CurrentRX - Robo, 0, width);
            break;
        case RIGHT: 
            CurrentRX = constrain(CurrentRX + Robo, 0, width - Robo);
            break;
        case UP: 
            CurrentRY = constrain(CurrentRY - Robo, 0, height);
            break;
        case DOWN:
            CurrentRY = constrain(CurrentRY + Robo, 0, height - Robo);
            break;
    
    //PRESS ENTER
        case ENTER:
            if (Contact) {
                PickUp = !PickUp;
            }      
     }
}
