import 'dart:developer';

import 'package:get/state_manager.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    log("Init");
    super.onInit();
  }

  @override
  void onClose() {
    log("close");
    super.onClose();
  }

  int _x = 0;

  int get getXValue => _x;

  increaseX() {
    _x++;
    log("x value : $_x");
    update(["xvalue"]);
  }

  RxInt _y = RxInt(0);

  int get getY => _y.value;

  increaseY() {
    _y.value++;
  }
}
