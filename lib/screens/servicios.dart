import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ServiciosScreen extends StatelessWidget {
   
  const ServiciosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        bottomOpacity: 0,
        title: const Text('| Servicios', 
          style: TextStyle(
            color: Color(0xd5efaf5b),
            fontWeight: FontWeight.w400,
            fontFamily: 'AveriaSansLibre',
            fontSize: 20
          ),
        ),
        leading: const Image(image: AssetImage('assets/puente-arcoiris.png',),
        width: 100,
        height: 100
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: Center(
          child: Column(
            children: const [
              CustomCardService(imageAsset: 'assets/peluqueria.png',titleCard: 'Peluqueria'),
              SizedBox(height: 30,),
              CustomCardService(imageAsset: 'assets/veterinaria.png',titleCard: 'Veterinaria'),
              SizedBox(height: 30,),
              CustomCardService(imageAsset: 'assets/cremacion.png',titleCard: 'Cremacion'),
              SizedBox(height: 30,),
              CustomCardService(imageAsset: 'assets/funeral.png',titleCard: 'Funeral'),
              SizedBox(height: 30,)
            ]
          ),
        ),
      ),
    );
  }
}

