import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ServiciosScreen extends StatelessWidget {
   
  const ServiciosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children:[
          SizedBox(height: size.height * 0.2),
          const CustomCardService(imageAsset: 'assets/peluqueria.png',titleCard: 'Peluqueria', colorCarta: Color(0xffB0D2E5)),
          const SizedBox(height: 30,),
          const CustomCardService(imageAsset: 'assets/veterinaria.png',titleCard: 'Veterinaria', colorCarta:  Color(0xffD0B167),),
          const SizedBox(height: 30,),
          const CustomCardService(imageAsset: 'assets/cremacion.png',titleCard: 'Cremacion', colorCarta: Color(0xffE0775A),),
          const SizedBox(height: 30,),
          const CustomCardService(imageAsset: 'assets/funeral.png',titleCard: 'Funeral', colorCarta: Color(0xff3891F4),),
          const SizedBox(height: 30,)
        ]
      ),
    );
  }
}

