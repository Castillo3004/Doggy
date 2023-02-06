import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EntrenamientoScreen extends StatelessWidget {
   
  const EntrenamientoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Center(
         child: Column(
           children: [
              SizedBox( height: size.height * 0.03),
              const CustomEntrenamientoButton(
                imageAsset: 'assets/image53.png', 
                titleCard: 'OBEDIENCIA', 
                colorCarta: Color(0xffB0D2E5), 
                estado: 'En Progreso', 
              ),
              const CustomEntrenamientoButton(
                imageAsset: 'assets/image57.png', 
                titleCard: 'MASCOTA NUEVA', 
                colorCarta: Color(0xffD0B167),
                estado: 'En Progreso',
              ),
              const CustomEntrenamientoButton(
                imageAsset: 'assets/image54.png', 
                titleCard: 'CONFIANZA', 
                colorCarta: Color(0xffE0775A),
                estado: 'Completado',
              )
           ],
         )
      );
  }
}