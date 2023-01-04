import 'package:flutter/material.dart';

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
            children: [
              CustomCardService('',''),
            ]
          ),
        ),
      ),
    );
  }
}

