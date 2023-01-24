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

      backgroundColor: Colors.orangeAccent.shade100,
      unselectedItemColor: Colors.black,
      selectedItemColor: AppTheme.primary,

      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.network_locked_outlined),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.elderly_rounded),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_rounded),
          label: 'Peluqueria'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_to_photos_rounded),
          label: 'Peluqueria'
        ),
        
      ]
    );
  }
}