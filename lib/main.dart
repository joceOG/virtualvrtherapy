import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtualvrtherapy/router/router.dart';
import 'package:virtualvrtherapy/views/loginPage.dart';


void main() {

  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      builder: DevicePreview.appBuilder,
      routerDelegate: AppRouterDelegate(),

    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}



class AppRouterDelegate extends GetDelegate {
  @override
  Widget build(BuildContext context) {
    return Navigator(
        onPopPage: (route, result) => route.didPop(result),
        pages: currentConfiguration != null
        ? [currentConfiguration!.currentPage!]
            : [GetNavConfig.fromRoute(Routes.HOME)!.currentPage!],
    );
  }
}

