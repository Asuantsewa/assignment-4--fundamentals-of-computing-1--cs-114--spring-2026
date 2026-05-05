char[] board = new char[9];
boolean gameEnded = false;

void initializeGame() {
  for (int i = 0; i < 9; i++) {
    board[i] = empty;
  }

  computerMove();
}

void handleKeyPress(char pressedKey) {
  if (gameEnded) {
    println("The game has ended.");
    return;
  }

  if (pressedKey < '0' || pressedKey > '8') {
    println("Incorrect key. Press a number from 0 through 8.");
    return;
  }

  int position = pressedKey - '0';

  if (board[position] != empty) {
    println("That square is already taken.");
    return;
  }

  board[position] = user;

  if (checkWinner(user)) {
    println("The user has won.");
    gameEnded = true;
    return;
  }

  if (isBoardFull()) {
    println("No one has won.");
    gameEnded = true;
    return;
  }

  computerMove();

  if (checkWinner(computer)) {
    println("The computer has won.");
    gameEnded = true;
    return;
  }

  if (isBoardFull()) {
    println("No one has won.");
    gameEnded = true;
    return;
  }

  println("The game is still in play.");
}

void computerMove() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == empty) {
      board[i] = computer;
      return;
    }
  }
}

boolean checkWinner(char player) {
  int[][] winningLines = {
    {0, 1, 2},
    {3, 4, 5},
    {6, 7, 8},
    {0, 3, 6},
    {1, 4, 7},
    {2, 5, 8},
    {0, 4, 8},
    {2, 4, 6}
  };

  for (int i = 0; i < winningLines.length; i++) {
    int a = winningLines[i][0];
    int b = winningLines[i][1];
    int c = winningLines[i][2];

    if (board[a] == player && board[b] == player && board[c] == player) {
      return true;
    }
  }

  return false;
}

boolean isBoardFull() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == empty) {
      return false;
    }
  }

  return true;
}
