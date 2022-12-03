import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


class ServicesController extends GetxController {

  List Services = [
     "Consultance en VR avec un medecin" ,
  "Consultance en VR avec un medecin" ,
  "Consultance en VR avec un medecin" ,
  "Consultance en VR avec un medecin" ,
  ] ;

  @override
  void onInit() async {
    super.onInit();
  }

  testadd() {
    update();
  }

}

