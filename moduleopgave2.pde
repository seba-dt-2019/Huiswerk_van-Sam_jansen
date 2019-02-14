//Moduleopgave_2
//Sam Jansen
//5-FEB-2018

import controlP5.*;
ControlP5 theControl;
  
  int sizeX = 500;
  int sizeY = 500;
  
  float ZF = (max (sizeX, sizeY)/60); // ZoomFactor
  
  float normaal = 18.5 *ZF;
  float overgewicht = 25 * ZF;
  float obees = 30 * ZF;
  
  float textsizelijn = 20 * (ZF/10);
  float textsizestaaf = 25 * (ZF/10);


void settings()  {
  size (sizeX, sizeY);
}

void setup() {
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}


void draw() {
  background (0);
    float BMI = (leesGewicht() / sq(leesLengte() / 100) );
    lijnen()  ;
    staaf(BMI);
}
  
void lijnen() {
  //LINES
     fill (255,255,255); 
     stroke (255,255,255);
     textSize (textsizelijn);
     int inspring = 10;
     
        text ("obees", inspring, height -(obees + textAscent()  ));
        line (0, height - obees , width, height - obees ); 
        
        text ("overgewicht", inspring, height - (overgewicht + textAscent()  ));
        line (0, height - overgewicht, width, height - overgewicht); 
        
        text ("normaal gewicht", inspring, height - (normaal + textAscent()  ));
        line (0, height -normaal, width , height - normaal); 
        
        text ("ondergewicht", inspring, height -(normaal - (textAscent() * 2)  ));
}

void staaf (float BMI){
    float breedte = width / 4;
    BMI *= ZF;
    
      textSize (textsizestaaf);
  
      text ("BMI: "+ (nf(BMI,2,2)), width/2 - breedte/2, height- (BMI + (textAscent() /2) )); // tekst boven staaf met 2 dec
      
      fill (153,0,76); //RED
 
      rect (width/2 - breedte/2, height , breedte, - BMI);
  }
