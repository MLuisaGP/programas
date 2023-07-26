void main() {
  final square1 = Square(side: -8);
  square1.side = 5;
  print(square1.toString());
  print(square1.area);
}

class Square {
  double _side; // side * side

  //se recomienda establecer primero los assert antes de hacer las inserciones
  Square({required double side})
      : assert(side >= 0, 'side must be >=0'),
        _side = side;

  double get area {
    return calculateArea();
  }

  double calculateArea() {
    return _side * _side;
  }

  set side(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'Value must be >=0';
    _side = value;
  }

  @override
  String toString() {
    return 'El area del cuadrado es: $area';
  }
}
