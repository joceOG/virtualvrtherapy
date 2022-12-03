import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:virtualvrtherapy/views/homeScreen.dart';
import '../main.dart';
import '../views/didactiel.dart';
import '../views/malDeDos.dart';
abstract class Routes {
  static const HOME = '/';
  static const HOMESCREEN = '/homescreen';
  static const DIDACTIEL = '/didactiel';
  static const MALDEDOS = '/maldedos';
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => Main(),
    ),
    GetPage(
      name: Routes.HOMESCREEN,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.DIDACTIEL,
      page: () => Didactiel(),
    ),
    GetPage(
      name: Routes.MALDEDOS,
      page: () => MalDeDos(),
    ),

    /*GetPage(
      name: Routes.LOGIN,
      page: () => Login(),
    ),*/
  ];
}
