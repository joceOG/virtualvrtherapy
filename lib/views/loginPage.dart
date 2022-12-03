import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/loginController.dart';
import '../router/router.dart';
import 'homeScreen.dart';

class LoginPage extends StatelessWidget {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {


    final Size screenSize = MediaQuery.of(context).size;
    //print("Size 2 ${screenSize.width}");
    const color_b = const Color(0xFF21F9B8);

    return SafeArea(
        child: Scaffold (
          body: Column(
               children: [
                  Row(
                     children: [
                          Container (
                            margin:EdgeInsets.only(top: screenSize.height * 8/100 , left: screenSize.width * 3/100),
                            padding: EdgeInsets.all(2.0),
                           //  height: screenSize.height * 3/100  ,
                            // width: screenSize.width * 3/100 ,
                             child : Image.asset('assets/images/therapie_2.png', height: 90 ) ,
                          ),
                          Container( padding: EdgeInsets.all(2.0),
                            margin:EdgeInsets.only(top: screenSize.height * 8/100),
                              child : const Text ( 'Virtual Vr Therapy', style:
                           TextStyle ( fontSize: 22 , fontWeight: FontWeight.bold , color: color_b ) ),
                          )
                     ],
                  ),
                 Container(
                 padding:EdgeInsets.all( 10.0 ) ,
                   child :
                     Text(
                       'Bonjour ,' ,

               style: TextStyle ( fontSize: 32 , fontWeight: FontWeight.bold  ) )
                     ),
                 Container(
                     padding:EdgeInsets.all( 10.0 ) ,
                     child :
                     Text(
                             'Bienvenue ' ,
                         style: TextStyle ( fontSize: 32 , fontWeight: FontWeight.bold  ) )
                 ),
                 Container(
                     padding:EdgeInsets.all( 10.0 ) ,
                     margin: EdgeInsets.only ( top : 20) ,
                     child :Image.asset('assets/images/therapie_2.png' , scale: 0.2,),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.only( top : 12) ,
                       width: screenSize.width * 12/100,
                       child: TextFormField(
                         controller: loginController.emailController,
                         keyboardType: TextInputType.emailAddress,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Veuillez remplir ce champ';
                           }
                           return null;
                         },// Use email input type for emails.
                         decoration: InputDecoration(
                           hintText: 'you@example.com',
                           prefixIcon: const Icon ( Icons.person , color : Colors.black
                           ),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(8),
                           ),
                         ),

                       ),
                     ),//flexible
                     //flexible//container
                   ],
                 ) ,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Container(
                       margin: EdgeInsets.only( top : 12) ,
                       width: screenSize.width * 12/100,
                       child: TextFormField(
                         controller: loginController.emailController,
                         obscureText: true,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Veuillez remplir ce champ';
                           }
                           return null;
                         },// Use email input type for emails.
                         decoration: InputDecoration(
                           hintText: 'Mot de Passe',
                           prefixIcon: const Icon ( Icons.enhanced_encryption , color : Colors.black ),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(8),
                           ),
                         ),

                       ),
                     ),//
                   ],
                 ) ,
                 Container (
                   margin: EdgeInsets.only( top : 30) ,
                   width: screenSize.width * 8/100,
                  child : ElevatedButton(
                   onPressed: () {
                     print('go');
                     Get.rootDelegate.toNamed(Routes.HOMESCREEN);
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
                     'Se Connecter',
                     style: TextStyle(
                         color: Colors.white
                     ),
                   ),
                 ),
                 )
               ],

            )));
  }



}

