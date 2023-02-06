import 'package:doggy/widgets/button_services_custom.dart';
import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PeluqueriaScreen extends StatelessWidget {
   
  const PeluqueriaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarServices(titulo: 'Peluqueria'),
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
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image60.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image60.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image60.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image60.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
              const ButtonServices( titulo: 'Master Class', tipo: 'Peluqeria para mascotas', imagenProducto: 'assets/image60.png', puntuacion: 5, ubicacion: 'Av. 10 de agosto ',),
            ],
          ),
        ),
      ),
    );
  }
}