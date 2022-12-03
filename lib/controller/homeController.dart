import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


class HomeController extends GetxController {

  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }


  @override
  void onInit() async {
    super.onInit();
  }

  testadd() {
    update();
  }

}

