import 'package:doggy/widgets/button_services_custom.dart';
import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class VeterinariaScreen extends StatelessWidget {
   
  const VeterinariaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarServices(titulo: 'Veterinaria',),
        elevation: 0,
        backgroundColor: const Color(0xffE2AF6E),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height *0.01,
              ),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image65.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image65.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image65.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image65.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image65.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              
            ],
          ),
        ),
      ),
    );
  }
}