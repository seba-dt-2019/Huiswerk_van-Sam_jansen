// moduleopdracht 6_2
// SAM JANSEN
// 19-02-2019

PImage jongetje, meisje;

void setup()  {
  jongetje = loadImage ("jongetje.png");
  meisje = loadImage ("meisje.png");
  
  size (100,100);
  background (0);
}



void draw ()  {
}



void mousePressed () {
  background (0);
  family();
}



void family (){
  int tellerGirl = 0;
  int tellerBoy = 0;

  while ((tellerGirl < 100) && (tellerBoy < 100)) {

          PImage [] lijst = {jongetje, meisje};
          int keuze = int (random(lijst.length));
        
          if (keuze == 0) {              // 0 = jongetje
              tellerBoy++;
          }  else  {                     // 1 = meisje
              tellerGirl++;
          }
  }  
println ("boys: " + tellerBoy);
println ("girls: " + tellerGirl);
}
