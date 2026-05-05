void drawBoard() {
  stroke(0);
  strokeWeight (4);
  
  line(cell_size, 0, cell_size, height);
  line( cell_size * 2, width, cell_size *2);
}
 void drawMoves(){
   for(int i = 0; i < 9; i++){
     int row = i / 3;
     int col = i % 3;
     
     int x = col * cell_size;
     int y = row * cell_size;
     
     if (board[i] == computer){
       draw(x, y);
     }
   }
 }
 
 void draw(int x, int y) {
   stroke(0);
   strokeWeight(6);
   int padding = 35;
   
   line(x + padding, y + padding, x + cell_size - padding, y + cell_size - padding);
   line(x + cell_size - padding, y + padding, x + padding, y + cell_size - padding);
 }
 
 void draw0(int x, int y) {
   noFill();
   stroke(0);
   strokeWeight(6);
   
   int padding = 35;
   
   ellipse(
   x + cell_size / 2,
   y + cell_size / 2,
   cell_size - padding * 2,
   cell_size - padding * 2
   );
 }
