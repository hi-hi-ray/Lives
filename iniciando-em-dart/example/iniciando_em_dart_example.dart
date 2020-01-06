class Bicycle {
  num cadence;
  num _speed = 0;
  num get speed => _speed;
  num gear;

  Bicycle(num cadence, num gear) {
    this.cadence = cadence;
    this.gear = gear;
  }

  void applyBrake(num decrement) {
    _speed -= decrement;
  }

  void speedUp(num increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
  
}

// Bicycle(this.cadence, this.speed, this.gear);

void main() {
  var bike = new Bicycle(6, 6);
  print(bike);

  int inteiro = 7;
  double decimal = 9.5;
  num numero1 = 20.4; // decimal
  num numero2 = 3; // inteiro

  print('Texto (String): ${bike.gear}');
  print('Numero 1: ${numero1.runtimeType}');
  print('Numero 2: ${numero2.runtimeType}');
  bike.speedUp(80);
  print(bike);
}

