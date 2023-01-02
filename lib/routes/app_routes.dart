import 'package:flutter/material.dart';

import '../screens/screens.dart';


class AppRoutes {

  static const initialRoute = '/login';



  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function (BuildContext context)> appRoutes = {};

    appRoutes.addAll({'/login': (BuildContext context) => const LoginScreen()});

    return appRoutes;
  
  }



}
