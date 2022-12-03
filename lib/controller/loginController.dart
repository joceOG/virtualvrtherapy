import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


class LoginController extends GetxController {

  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");


  @override
  void onInit() async {
    super.onInit();
  }

  testadd() {
    update();
  }

}

