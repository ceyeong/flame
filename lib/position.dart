import 'dart:math' as math;

class Position {
  double x, y;

  Position(this.x, this.y);

  Position.empty() : this(0.0, 0.0);

  Position add(Position other) {
    this.x += other.x;
    this.y += other.y;
    return this;
  }

  Position opposite() {
    this.x *= -1;
    this.y *= -1;
    return this;
  }

  double length() {
    return math.sqrt(math.pow(this.x, 2) + math.pow(this.y, 2));
  }
}