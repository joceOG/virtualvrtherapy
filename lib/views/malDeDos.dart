

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/malDeDosController.dart';
import '../controller/servicesController.dart';
import '../models/body_parts.dart';
import '../router/router.dart';

class MalDeDos extends StatelessWidget {
  const MalDeDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final malDeDosController = Get.put(MalDeDosController());
    final Size screenSize = MediaQuery.of(context).size;
    const color_b = const Color(0xFF21F9B8);
    BodyParts _bodyParts = const BodyParts();
    return SafeArea(
        child: Scaffold (
            body:Column ( children : [
                  Row (children: [
                  Container (
                    padding: EdgeInsets.all(4.0),
//  height: screenSize.height * 3/100  ,
// width: screenSize.width * 3/100 ,
                    child : IconButton(icon: Icon(Icons.arrow_back, size: 30),  onPressed: () {
                      Get.back();
                    },),
                  ),
                  Container( padding: EdgeInsets.all(2.0),
                    margin:EdgeInsets.only(top: screenSize.height * 0.23/100),
                    child : const Text ( 'Didactiel', style:
                    TextStyle ( fontSize: 22 , fontWeight: FontWeight.bold , color: color_b ) ),
                  ),
                  Container (
                      width:screenSize.width * 13/100  ,
                      margin:EdgeInsets.only( left: screenSize.width * 2/100 , top : 6),
                      padding: EdgeInsets.all(2.0),
                      //  height: screenSize.height * 3/100  ,
                      // width: screenSize.width * 3/100 ,
                      child : Align(
                        alignment: Alignment.topRight,
                        child : Image.asset('images/user_2.png', height: 90 ) ,
                      )
                  ), ] ),
                   Container(
                child: Text('Indiquer la Zone du Mal'),
           ),
    ]

 )));
  }
}

