ArrayList<Ball> balls = new ArrayList<>();

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  for (Ball ball : balls) { //for every ball in balls. So many balls...
    ball.display();
    ball.speed();
    ball.reverse();
  }
}

void mousePressed() { // if mouse is pressed, a new object of the ball gets created. Function is called to update and print the amount.
  Ball newBall = new Ball(mouseX, mouseY, 20);
  balls.add(newBall); //gets added to the ArrayList <balls>.
  ballsAmount();
}

int ballsAmount() { //Counts how many balls there currently is in the window.
  int count = balls.size();
  if (count == 1) {
    println("There is currently " + count + " ball.");
  } else {
    println("There are currently " + count + " balls.");
  }
    return count;
}
