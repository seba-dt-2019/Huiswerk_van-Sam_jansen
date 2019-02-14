
// mouseclicked werkt niet altijd. waarom niet?


int wh = 1000, ht = 1000;
int scale = 20;
int TargetSize = (max(wh, ht)) / scale;

boolean aan = false;

int Treffers = 0, Missers = 0, mover = 0;
//kleuren
int RED = #FF0000, YELLOW = #FFFF00, GREEN = #00FF00, BLUE = #0000FF, WHITE = #FFFFFF, BLACK = #000000;

float [] Knop = {wh/2 -(2*TargetSize), ht - TargetSize, (4*TargetSize), TargetSize}; 


void settings () {
 size (wh,ht);
}

void setup () {
   noCursor ();
}


void draw () {
     background (BLACK);
     Startbutton(aan);
     Score (); 

      if (aan) {
          TARGET();
      }
   
   // custom cursor
   fill (BLUE);
   ellipse(mouseX, mouseY, TargetSize*0.2, TargetSize*0.2);
} 



void Startbutton (boolean aan) {
    //GREEN BUTTON 
    fill(GREEN);                              // knop altijd op top
    rect (Knop[0],Knop[1],Knop[2],Knop[3]);
   
    //BLACK TEXT IN GREEN BUTTON
    fill (BLACK);
    textSize (TargetSize /2.5);
    textAlign (CENTER);
    String tekst;
    if (aan) {
      tekst = "STOP"; 
    } else {
      tekst = "START";}
    text (tekst, width/2, height - (TargetSize/2)); // <-- midden van knop van maken
}



void Score () {
     textAlign (LEFT);
     fill (WHITE);
     text ("Aantal raak: " + Treffers + " aantal mis: " + Missers, 0, (TargetSize/2));
}



void reset () {
        mover = 0;
        Treffers = 0;
        Missers = 0;
}

void TARGET() {
     ellipseMode (CENTER);
    fill (RED);
    ellipse ( mover,(height/2),TargetSize,TargetSize); //<-- WHILE LOOP VAN MAKEN ??? terugkerende code
    fill (WHITE);
    ellipse (mover,(height/2),TargetSize*0.8,TargetSize*0.8);
    fill (RED);
    ellipse (mover,(height/2),TargetSize*0.6,TargetSize*0.6);
    fill (WHITE);
    ellipse (mover,(height/2),TargetSize*0.4,TargetSize*0.4);
    fill (RED);
    ellipse (mover,(height/2),TargetSize*0.2,TargetSize*0.2);
    
    //if mover in screen
    if (mover < width) {
        mover = mover + 1;
    //if mover outside of screen
    } else {
        mover = 0;
    }
}


// ACTUAL GAME
void mousePressed () {
     boolean Button = ((mouseX > Knop[0]) && (mouseX < (Knop[0] + Knop[2])) && 
                       (mouseY < height) && (mouseY > (height - Knop[3])));          // START / STOP KNOP
     boolean Hit = ((dist(mouseX, mouseY, mover, height/2)) < TargetSize/2);                  // TREFFER OP SCHIJF
    
      if (!aan && Button)   {                                                  // als UIT en muis in KNOP
          aan = true;
      }  else if  (aan && Button)   {                                        // ALS UIT en muis in KNOP
          aan = false;
          reset ();
      }  else if (aan && Hit)  {                                               // ALS AAN en HIT
          Treffers = Treffers + 1;
      }  else if (aan && !Hit)  {                                               // ALS AAN en MISSER
          Missers = Missers + 1;
      }  else {};
   delay (25);

} // END MOUSECLICKED
   
      

   
   
   
   
   
   
   
   
