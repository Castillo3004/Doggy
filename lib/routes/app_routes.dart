import 'package:flutter/material.dart';

import '../screens/screens.dart';


class AppRoutes {

  static const initialRoute = '/splash';
  static const routeLogin = '/login';
  static const routeMenu = '/menu';
  

  static Map<String, Widget Function(BuildContext)> routes = {
      '/splash': (BuildContext context) => const SplashScreen(),
      '/login': (BuildContext context) => const LoginScreen(),
      '/tutorial': (BuildContext context) => const TutorialScreen(),
      '/menu': (BuildContext context) => const MenuScreen()

    };


}
