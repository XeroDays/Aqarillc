import 'dart:ui';

class BallModel {
  double? size;
  Color? color;
  int? number;
}

class BallBuilder {
  BallModel? _ballModel;

  BallBuilder() {
    _ballModel = BallModel();
  }

  BallBuilder setSize(double size) {
    _ballModel!.size = size;
    return this;
  }

  BallBuilder setColor(Color color) {
    _ballModel!.color = color;
    return this;
  }

  BallBuilder setNumber(int number) {
    _ballModel!.number = number;
    return this;
  }

  BallModel build() {
    return _ballModel!;
  }
}
