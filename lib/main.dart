import 'package:doggy/providers/nav_provider.dart';
import 'package:flutter/material.dart';

import 'package:doggy/routes/app_routes.dart';
import 'package:doggy/theme/app_theme.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget{

  const MyApp({Key? key}): super (key:key);
  
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => NavProvider())
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doggy',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.routes,
        theme: AppTheme.lightTheme,
      )
    );
  }

  

}