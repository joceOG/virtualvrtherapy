





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/servicesController.dart';
import '../router/router.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final servicesController = Get.put(ServicesController());
    final Size screenSize = MediaQuery.of(context).size;
    const color_b = const Color(0xFF21F9B8);
    return SafeArea(
        child: Scaffold (
            body:
            Column (
              children : [
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
                      child : const Text ( 'Services', style:
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
            Container(
              padding : EdgeInsets.all(16) ,
              height: 80,
              child :
                               Center(
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
                                      'Consultation via Réalité Virtuelle',
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                               ),
                           ),
                Container(
                  padding : EdgeInsets.all(16) ,
                  height: 80,
                  child :
                  Center(
                    child : ElevatedButton(
                      onPressed: () {
                        Get.rootDelegate.toNamed(Routes.DIDACTIEL);
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
                        'Consultation via Didacticiel',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding : EdgeInsets.all(16) ,
                  height: 80,
                  child :
                  Center(
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
                        'Consultation via Appel Video',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding : EdgeInsets.all(16) ,
                  height: 80,
                 child :
                  Center(
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
                        'Autres',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ]
    ) ));
  }
}

