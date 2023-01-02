import 'package:flutter/material.dart';

import '../screens/screens.dart';


class AppRoutes {

  static const initialRoute = '/ejemplo';



  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function (BuildContext context)> appRoutes = {};

    appRoutes.addAll({'/ejemplo': (BuildContext context) => const Ejemplo()});

    return appRoutes;
  
  }



}
