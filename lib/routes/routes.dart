import 'package:flutter/cupertino.dart';

import '../screen/homepage/homepage.dart';
import '../screen/splash/splash.dart';

class Routes {
  static String splashScreen = "/";
  static String homePage = "home_page";

  static Map<String, WidgetBuilder> myRoutes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
  };
}
