class Ball {
  float x;
  float y;
  float speedX;
  float speedY;
  int diameter;
  color clr;
  
  Ball(float x, float y, int diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    speedX = random(-5, 5);
    speedY = random(-5, 5);
    clr = color(random(255), random(255), random(255));
  }
  
  void display() {
    fill(clr);
    ellipse(x, y, diameter, diameter);
    
  }
  
  void speed() {
    x = x + speedX;
    y = y + speedY;
  }
  
  void reverse() {
    if (x < 0 || x > width) {
      speedX *= -1;
    }
    if (y < 0 || y > height) {
      speedY *= -1;
    }
  }
}
