import 'package:flutter/material.dart';

class PerfilMascotaScreen extends StatelessWidget {
   
  const PerfilMascotaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Stack(
                children:[
                  const CircleAvatar(
                    minRadius: 60,
                    maxRadius: 60,
                    backgroundImage: NetworkImage('https://definicion.de/wp-content/uploads/2013/03/perro-1.jpg'),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Ink(
                      height: 40,
                      decoration: const ShapeDecoration(
                        color: Colors.lightBlue,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        splashRadius: 25,
                        iconSize: 20,
                        icon: const Icon(Icons.edit),
                        color: Colors.white,
                        onPressed: (){},
                      ), 
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}