import 'package:flutter/material.dart';

import '../screens/screens.dart';


class AppRoutes {

  static const initialRoute = '/splash';
  static const routeLogin = '/login';
  static const routeSocial = '/social';
  static const routeServicios = '/servicios';
  static const rutaPrincipal = '/home';
  

  static Map<String, Widget Function(BuildContext)> routes = {
      '/splash': (BuildContext context) => const SplashScreen(),
      '/login': (BuildContext context) => const LoginScreen(),
      '/tutorial': (BuildContext context) => const TutorialScreen(),
      '/social': (BuildContext context) => const SocialScreen(),
      '/servicios': (BuildContext context) => const ServiciosScreen(),
      '/home': (BuildContext context) => const HomeScreen()

    };


}
