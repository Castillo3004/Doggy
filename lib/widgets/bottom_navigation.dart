import 'package:doggy/providers/nav_provider.dart';
import 'package:doggy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Navegacion extends StatelessWidget {
   
  const Navegacion({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final navProvider = Provider.of<NavProvider>(context);

    final indexActual = navProvider.opcionSeleccionada;

    return BottomNavigationBar(
      onTap: (int i) => navProvider.opcionSeleccionada = i,
      currentIndex: indexActual,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      backgroundColor: Colors.grey,
      unselectedItemColor: Colors.black,
      selectedItemColor: AppTheme.primary,

      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Peluqueria'
        ),
        
      ]
    );
  }
}