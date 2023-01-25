import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';


class SocialScreen extends StatelessWidget {
   
  const SocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Image(image: AssetImage('assets/puente-arcoiris.png'), height: 60),
                const SizedBox( width: 120),
                const ButtonHeadSocial( icono: Icons.add),
                const ButtonHeadSocial( icono: Icons.search),
                FloatingActionButton(
                  heroTag: 'button_avatar',
                  backgroundColor: const Color.fromARGB(33, 255, 255, 255),
                  elevation: 0.8,
                  mini: true,
                  onPressed: (){
                    Navigator.pushNamed(context, '/perfil_m');
                  },
                  child: const CircleAvatar(backgroundImage: NetworkImage('https://definicion.de/wp-content/uploads/2013/03/perro-1.jpg'),),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomCardType2(imageUrl: 'https://images.ecestaticos.com/h34TvzTFVdrau9Un4Wdmwhed_e4=/0x115:2265x1390/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F8ec%2F08c%2F85c%2F8ec08c85c866ccb70c4f1c36492d890f.jpg', backgroundImage: 'https://definicion.de/wp-content/uploads/2013/03/perro-1.jpg'),
            const SizedBox(
              height: 30,
            ),
            const CustomCardType2(imageUrl: 'https://images.hola.com/imagenes/mascotas/20221020219416/razas-perros-toy/1-154-385/razas-de-perro-toy-t.jpg', backgroundImage: 'https://estaticos-cdn.prensaiberica.es/clip/823f515c-8143-4044-8f13-85ea1ef58f3a_16-9-discover-aspect-ratio_default_0.jpg'),
            const SizedBox(
              height: 30,
            ),
            const CustomCardType2(imageUrl: 'https://fotografias.lasexta.com/clipping/cmsimages01/2022/08/09/3FFA8546-05CE-4608-9B69-6602D02A4C58/cachorro-pomsky_98.jpg?crop=1183,666,x0,y103&width=1900&height=1069&optimize=high&format=webply', backgroundImage: 'https://as01.epimg.net/diarioas/imagenes/2022/05/29/actualidad/1653826510_995351_1653826595_noticia_normal_recorte1.jpg')
          ],
      ),
    );    
  }
}



class ButtonHeadSocial extends StatelessWidget {

  final IconData icono;

  const ButtonHeadSocial({
    Key? key, required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 40,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(32, 53, 53, 53),
        shape: CircleBorder(),
      ),
      child: IconButton(
        onPressed: (){}, 
        icon: Icon(icono, color: const Color.fromARGB(255, 255, 255, 255)),
        splashRadius: 25,
      ),
    );
  }
}