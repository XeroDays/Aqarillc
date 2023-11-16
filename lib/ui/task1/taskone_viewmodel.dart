import 'dart:math';

import 'package:agarillc/core/contants/app_constants.dart';
import 'package:agarillc/core/models/ball_model.dart';
import 'package:flutter/material.dart';

class Task1Viewmodel extends ChangeNotifier {
  int _number = 0;
  int get number => _number;
  Color _color = Colors.blue;
  Color get color => _color;

  double _size = 30;
  double get size => _size;

  List<BallModel> balls = [];

  void changeNumber() {
    _number++;
    notifyListeners();
  }

  void changeColor() {
    //select random color from contants
    _color = colors_constants[Random().nextInt(colors_constants.length)];
    notifyListeners();
  }

  void changeSize() {
    _size = Random().nextInt(30).toDouble() + 30;
    notifyListeners();
  }

  void buildObject() {
    BallBuilder ballBuilder = BallBuilder();

    //this is builder methods used to post add values to the ball method with the help of builder method
    ballBuilder.setNumber(_number).setColor(_color).setSize(_size);

    // this will add BallModel into the list
    balls.add(ballBuilder.build());
    notifyListeners();
  }
}
