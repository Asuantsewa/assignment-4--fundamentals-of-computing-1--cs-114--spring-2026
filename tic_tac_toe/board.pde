int[] board = new int[9];
int gameState = game_in_play;
  gameState = gameInPlay;
void initializeBoard() {
  for (int i = 0; i <9; i++){
    board[i] = blank;
  }
  int gameState = game_in_play;
  gameState = game_in_play;
}

  
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
board [square] = user;
updateGameState();

if (gameState == user_won) {
  println("The user has won. ");
  return;
}

if (gameState == draw) {
  println("No one has won");
  return;
} 
computerTurn();
updateGameState ();

   if (gameState == computer_won) {
      println("The computer has won");
   }else if (gameState == draw) {
     println("No one has won.");
   }else{
      println("The game is still in play.");
   }
 }
 
 void computerTurn() {
   if (gameState != game_in_play) {
     return;
   }
   int move = findingWinningMove(computer);
   
   if (move == -1) {
     move = findingWinningMove(user);
   }
   if (move == -1 && board[4] == blank) {
     move = 4;
}
   if (move == -1) {
     move = firstBlankSquare();
   if (move != -1) {
     board[move] = computer;
   }
}
 }


int findWinningMove(int player) {

  
  for (int i = 0; i < 9; i++) {
    if (board[i] == blank) {
        board[i] = player;
       
       boolean wins = checkWinner(player);
       board[i] = blank;
       if (wins) {
          return i;
       }
      }
  }
    return -1;
  }
;

void updateGameState() {
  if (checkWinner (computer)) {
    gameState = computer_won;
  } else if (checkWinner (user)) {
    gameState = user_won;
  } else if (boardIsFull()) {
     gameState = draw;
  } else {
     gameState = game_in_play;
  }
}
boolean checkWinner(int player) {
  int[][] wins = {
{0, 1, 2},
{3, 4, 5},
{6, 7, 8},
{0, 3, 6},
{1, 4, 7},
{2, 5, 8},
{0, 4, 8},
{2,4,  6}
};

for(int i = 0; i < wins.length; i++){
   if (board[wins[i][0]] == player && 
       board[wins[i][1]] == player &&
       board[wins[i][2]] == player
     ) {
       return true;
     }
 }
  return false;
}

boolean boardIsFull() {
  for (int i = 0; i < 9; i++) {
    if (board [ i ] == blank) {
      return false;
    }
  }
  return true;
}
      
