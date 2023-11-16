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
    //select random color
    _color = colors_constants[Random().nextInt(colors_constants.length)];

    notifyListeners();
  }

  //list of random colors

  void changeSize() {
    //pick random size from 30 to 60
    _size = Random().nextInt(30).toDouble() + 30;

    notifyListeners();
  }

  void buildObject() {
    // _number = 0;
    // _color = Colors.blue;
    // _size = 30;
    BallBuilder ballBuilder = BallBuilder();
    ballBuilder.setNumber(_number).setColor(_color).setSize(_size);

    balls.add(ballBuilder.build());

    notifyListeners();
  }
}
