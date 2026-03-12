ClickGame clickGame;

void setup() {
  size(600, 400);
  clickGame = new ClickGame();
}

void draw() {
  background(30);
  clickGame.update();
  clickGame.display();
}

void mousePressed() {
  clickGame.mousePressed();
}

// ---------------- ClickGame Class ----------------
class ClickGame {
  boolean gameStarted = false;
  Game game;
  StartScreen startScreen;
  
  ClickGame() {
    startScreen = new StartScreen();
    game = new Game();
  }
  
  void update() {
    if (gameStarted) {
      game.update();
    }
  }
  
  void display() {
    if (!gameStarted) {
      startScreen.display();
    } else {
      game.display();
    }
  }
  
  void mousePressed() {
    if (!gameStarted) {
      if (startScreen.isStartClicked(mouseX, mouseY)) {
        gameStarted = true;
      }
    } else {
      game.mousePressed();
    }
  }
}
