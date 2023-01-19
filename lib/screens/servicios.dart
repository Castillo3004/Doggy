import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ServiciosScreen extends StatelessWidget {
   
  const ServiciosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
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
    );
  }
}

