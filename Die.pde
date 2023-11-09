class Die {
   int faces;
   int current;
   int r, g, b, a;
   Die() {
     faces = 6;
     r = (int)Math.random()*256;
     g = (int)Math.random()*256;
     b = (int)Math.random()*256;
     a = 80;
     current = 0;
   }
   int roll() {
     int retval;
     retval = (int)(Math.random()*6) + 1;
     return retval;
   }
   void show(int myX, int myY) {
     System.out.print(current + " ");
     rect(myX, myY, 180, 180);
   }
}
