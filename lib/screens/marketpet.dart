import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MarketPetScreen extends StatelessWidget {
   
  const MarketPetScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  SingleChildScrollView(
        child: Column(
         children: [
          SizedBox(
            height: size.height *0.1,
          ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                ButtonMarket(precio: 6.99, descripcion: 'Alimento Pedigree para adulto',imagenProducto: 'assets/image44.png'),
                ButtonMarket(precio: 10, descripcion: 'Alimento Wiskas para gato mayor de 1 año',imagenProducto: 'assets/image50.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                ButtonMarket(precio: 15, descripcion: 'Juguete para Mascota',imagenProducto: 'assets/image51.png'),
                ButtonMarket(precio: 6.99, descripcion: 'Alimento Pedigree para adulto',imagenProducto: 'assets/image44.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                ButtonMarket(precio: 6.99, descripcion: 'Alimento Pedigree para adulto',imagenProducto: 'assets/image44.png'),
                ButtonMarket(precio: 5, descripcion: 'Hueso de calcio | 5 unidades',imagenProducto: 'assets/image52.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                ButtonMarket(precio: 6.99, descripcion: 'Alimento Pedigree para adulto',imagenProducto: 'assets/image44.png'),
                ButtonMarket(precio: 10, descripcion: 'Alimento Wiskas para gato mayor de 1 año',imagenProducto: 'assets/image50.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                ButtonMarket(precio: 15, descripcion: 'Juguete para Mascota',imagenProducto: 'assets/image51.png'),
                ButtonMarket(precio: 6.99, descripcion: 'Alimento Pedigree para adulto',imagenProducto: 'assets/image44.png'),
              ],
            ),
          ],
        ),
    );
  }
}
