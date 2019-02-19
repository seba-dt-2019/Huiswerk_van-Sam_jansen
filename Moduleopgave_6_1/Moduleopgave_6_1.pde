// moduleopdracht 6
// SAM JANSEN
// 19-02-2019

PImage jongetje, meisje;

void setup()  {
  jongetje = loadImage ("jongetje.png");
  meisje = loadImage ("meisje.png");
  
  size (1000,1000);
  background (0);

}

void draw ()  {

}

void mousePressed () {
  background (0);
  family();
}

void family (){
  int teller = 0;
  int Y = 0;
  while (teller < (height / 50)) {
      int check = 1;
      int X = 0;
      do {
          PImage [] lijst = {jongetje, meisje};
          int keuze = int (random(lijst.length));
          image (lijst[keuze],X,Y);
          check = keuze;
          X += 50;
      } while (check != 0);
  Y += 50;
  teller++;

  }  

}
