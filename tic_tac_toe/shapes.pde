void drawBoard() {
  stroke(0);
  strokeWeight(4);

  line(cell_size, 0, cell_size, height);
  line(cell_size * 2, 0, cell_size * 2, height);

  line(0, cell_size, width, cell_size);
  line(0, cell_size * 2, width, cell_size * 2);
}

void drawMoves() {
  for (int i = 0; i < 9; i++) {
    int row = i / 3;
    int col = i % 3;

    int x = col * cell_size;
    int y = row * cell_size;

    if (board[i] == computer) {
      drawX(x, y);
    } else if (board[i] == user) {
      drawO(x, y);
    }
  }
}

void drawX(int x, int y) {
  stroke(0);
  strokeWeight(6);

  int padding = 40;

  line(x + padding, y + padding, x + cell_size - padding, y + cell_size - padding);
  line(x + cell_size - padding, y + padding, x + padding, y + cell_size - padding);
}

void drawO(int x, int y) {
  stroke(0);
  strokeWeight(6);
  noFill();

  ellipse(x + cell_size / 2, y + cell_size / 2, cell_size - 80, cell_size - 80);
}
