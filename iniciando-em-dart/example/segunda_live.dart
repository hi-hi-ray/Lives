import 'dart:math';

class Rectangle {
  num width;
  num height;
  Point origin;

  Rectangle({
    this.origin = const Point(0, 0),
    this.width = 73737485860,
    this.height = 0});

  @override
  String toString() =>
      'Origem: (${origin.x}, ${origin.y}), largura: $width, altura: $height';
}

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    // To trigger exception, don't implement a check for 'triangle'.
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class Triangle implements Shape {
  final num side;
  Triangle(this.side);
  num get area => pow(side, 2) / 2;
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

class CircleMock implements Circle {
  num area;
  num radius;
}

void printScream () {
  String scream(int length) => "A${'a' * length}h!";
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }
}

void printMap() {
  String scream(int length) => "A${'a' * length}h!";
  final values = [1, 2, 3, 5, 10, 50];
  values.map(scream).forEach(print);
}

void printSkip () {
  String scream(int length) => "A${'a' * length}h!";
  final values = [1, 2, 3, 5, 10, 50];
  values.skip(1).take(3).map(scream).forEach(print);
}

// Main da Segunda Live
void main() {
  print(Rectangle(origin: const Point(5, 8600), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);
  print(pi);
  print(shapeFactory('square').area);
  final circleFac = shapeFactory('circle');
  final squareFac = shapeFactory('square');
  print('${circleFac} e ${squareFac}');

  try {
    print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
  } catch (err) {
    print(err);
  }

  printScream();
  printMap();
  printSkip();
}