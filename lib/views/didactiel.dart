





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/servicesController.dart';
import '../router/router.dart';

class Didactiel extends StatelessWidget {
  const Didactiel({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final servicesController = Get.put(ServicesController());
    final Size screenSize = MediaQuery.of(context).size;
    const color_b = const Color(0xFF21F9B8);
    return SafeArea(
        child: Scaffold (
            body:Column ( children : [
                  Row (children: [
                  Container (
                    padding: EdgeInsets.all(4.0),
//  height: screenSize.height * 3/100  ,
// width: screenSize.width * 3/100 ,
                    child : IconButton(icon: Icon(Icons.arrow_back, size: 30),  onPressed: () {
                      Get.rootDelegate.toNamed(Routes.HOMESCREEN);
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
                Expanded(child:   GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[100],
                      child:  Center(  child :            TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text('Blessures Musculaires'),
                      ),)
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[200],
                      child: Center(  child :            TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text('Courbatures'),
                      ), )
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[300],
                      child: Center(  child :           TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Get.rootDelegate.toNamed(Routes.MALDEDOS);
                        },
                        child: const Text('Mal de Dos'),
                      ),)
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[400],
                      child:  Center(  child :           TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text('Premiers Soins'),
                      ), )
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[500],
                      child:  Center(  child :  TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text('Reanimation'),
                      ), )
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[600],
                      child:  Center(  child :            TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text('KinesieTherapie'),
                      ), )
                    ),
                  ],
                ) )])

 ));
  }
}

