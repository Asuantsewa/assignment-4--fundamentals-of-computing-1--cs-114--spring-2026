int[] board = new int[9];
int gameState = game_in_play;
void initializeBoard() {
  for (int i = 0; i <9; i++){
    board[i] = blank;
  }
  gameState = game_in_play;
  void handleKeyPress(char pressedKey) {
    if (gameState != game_in_play) {
      println(" The game has ended") ;
      return;
    }
 
    
int square = pressedKey - '0';
if (board[square] != blank) {
  println(" That square is already taken. ");
  return; 
}
board [square] = user
