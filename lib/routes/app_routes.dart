import 'package:flutter/material.dart';

import '../screens/screens.dart';


class AppRoutes {

  static const initialRoute = '/splash';


  static Map<String, Widget Function(BuildContext)> routes = {
      '/splash': (BuildContext context) => const SplashScreen(),
      '/login': (BuildContext context) => const LoginScreen()
  
  };


}
