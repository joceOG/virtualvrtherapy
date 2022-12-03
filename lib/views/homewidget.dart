





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../router/router.dart';

class Homewidget extends StatelessWidget {
  const Homewidget({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    const color_b = const Color(0xFF21F9B8);
    return SafeArea(
        child: Scaffold (
            body: Column(
              children: [
                Row(
                  children: [
                    Container (
                      padding: EdgeInsets.all(4.0),
//  height: screenSize.height * 3/100  ,
// width: screenSize.width * 3/100 ,
                      child : IconButton(icon: Icon(Icons.arrow_back, size: 30),  onPressed: () {
                        Get.rootDelegate.toNamed(Routes.HOME);
                      },),
                    ),
                    Container( padding: EdgeInsets.all(2.0),
                      margin:EdgeInsets.only(top: screenSize.height * 0.23/100),
                      child : const Text ( 'Accueil', style:
                      TextStyle ( fontSize: 22 , fontWeight: FontWeight.bold , color: color_b ) ),
                    ),
                    Container (
                      width:screenSize.width * 14/100  ,
                    margin:EdgeInsets.only( left: screenSize.width * 2/100 , top : 6),
                    padding: EdgeInsets.all(2.0),
                //  height: screenSize.height * 3/100  ,
                // width: screenSize.width * 3/100 ,
                    child : Align(
                      alignment: Alignment.topRight,
                         child : Image.asset('images/user_2.png', height: 90 ) ,
                    )
                    )
                  ],
                ),
               Container (
                 padding: EdgeInsets.all(20.0),
                 margin : EdgeInsets.only(left :10 , right : 10 , top: screenSize.height * 5/100) ,
                  child : const Center(
                    child :
                    Text(
                        'Virtual Vr Therapy est concue pour faciliter les interactions avec les patients à l\'aide de la réalité virtuelle',
                        style: TextStyle ( fontSize: 24 , fontWeight: FontWeight.bold  ) )
                ),),
                Container (
                   padding : EdgeInsets.all(15) ,
                  margin : EdgeInsets.only( top : 20 ) ,
                  width: screenSize.width * 30/100 ,
                    height: screenSize.height * 30/100 ,

                  child: Center (
                     child: Image.asset(
                        "assets/images/telemedecine.jpg" , scale : 1.4
                     )
                  )
                ),
                Container (
                  margin: EdgeInsets.only( top : 30) ,
                  width: screenSize.width * 8/100,
                  child : ElevatedButton(
                    onPressed: () {
                    },
                    style : ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(color_b) ,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                      ),
                    ),
                    child: const Text(
                      'En savoir Plus',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),

              ],

            )));
  }
}

