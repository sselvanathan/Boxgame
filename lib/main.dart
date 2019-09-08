import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:hashire/hashire-game.dart';
import 'package:flutter/gestures.dart';

void main() async{
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.landscapeLeft);

  Hashire game  = Hashire();
  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTapDown;
  runApp(game.widget);
  flameUtil.addGestureRecognizer(tapper);
}
