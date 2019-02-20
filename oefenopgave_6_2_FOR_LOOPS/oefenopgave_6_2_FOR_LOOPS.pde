
void setup() {
  size (400, 400);
  background (0);
  fill (255);

    for (int X = 1; X<11; X++) {
        
        for (int Y = 1; Y<11; Y++) {
            
          text ( X * Y  , 25+ X* 25, 25+ Y * 25 );
        }
    }
}
