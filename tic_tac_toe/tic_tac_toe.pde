void setup() {
  size(500, 500);
  initializeBoard();
  computerTurn();
}

void draw() {
  background(255);
  drawBoard();
  drawMoves();  
}
void keyPressed() {
  handleKeyPressed(key);
}
