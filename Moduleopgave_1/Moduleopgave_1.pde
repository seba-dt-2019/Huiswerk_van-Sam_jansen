// Moduleopgave 1
// Sam Jansen
// 2-FEB-19

size(500, 200);
background (51);
// Staven (deze waardes kunnen veranderen)
float staafA = 20.0;
float staafB = 190.0;
float staafC = 150.0;

// 3 benodigde variabelen
float SB = width / 5; // Straafbreedte
float TA = width /10; // Tussenafstand 
int   RL = 130;       // hoogte van de rode lijn (functie niet duidelijk dus nu statisch)
float ZF = (0.95 / (max (staafA, staafB, staafC) / height)) ;   // Variabele Zoomfactor


fill (153, 51, 255); // purple
rect (TA, height - (staafA * ZF),   SB, staafA * ZF);
text (staafA, TA, height - (staafA * ZF));

fill (0, 255, 0); // LIME
rect (TA + SB + TA, height - (staafB * ZF), SB, staafB * ZF);
text (staafB, TA + SB + TA, height - (staafB* ZF));

fill (139, 69, 19); //Saddlebrown
rect ((3*TA) + (2* SB), height - (staafC * ZF), SB, staafC * ZF);
text (staafC, (3*TA) + (2* SB), height - (staafC* ZF));

stroke (255,0,0);//red
line (0,  height - RL, width, height - RL); 
