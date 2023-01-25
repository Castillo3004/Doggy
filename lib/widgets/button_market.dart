import 'package:flutter/material.dart';

class ButtonMarket extends StatelessWidget {

  final double precio; 
  final String descripcion; 
  final String imagenProducto; 

  const ButtonMarket({
    Key? key, 
    required this.precio, 
    required this.descripcion, 
    required this.imagenProducto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(7, 151, 151, 150),
          shadowColor: Colors.transparent,
          minimumSize: const Size(170, 210),
          maximumSize: const Size(170, 210),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.zero,
        ), 
        child: SizedBox(
          width: 160,
          height: 190,
          child: Column(    
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage(imagenProducto), fit: BoxFit.cover, height: 110),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$precio \$', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                      const SizedBox(height: 7,),
                      Text(descripcion, maxLines: 2, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
                    ],
                  ),
                )          
            ],
          ),
        ),
      ),
    );
  }
}