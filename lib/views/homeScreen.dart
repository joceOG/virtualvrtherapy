import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:virtualvrtherapy/views/homewidget.dart';
import 'package:virtualvrtherapy/views/services.dart';

import '../controller/homeController.dart';
import '../controller/loginController.dart';

class HomeScreen extends StatelessWidget {

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {


    final Size screenSize = MediaQuery.of(context).size;
    //print("Size 2 ${screenSize.width}");
    const color_b = const Color(0xFF21F9B8);

    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                Homewidget(),
                Services(),Homewidget(),Homewidget(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Accueil',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.bubble_middle_top_fill,
                label: 'Services',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.chat_bubble_2_fill,
                label: 'Messagerie',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.rectangle_split_3x3_fill,
                label: 'Agenda',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
  }



