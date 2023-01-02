import 'package:flutter/material.dart';

import 'package:doggy/routes/app_routes.dart';
import 'package:doggy/theme/app_theme.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget{

  const MyApp({Key? key}): super (key:key);
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doggy',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.lightTheme,
    );
  }

  

}