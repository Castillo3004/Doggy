import 'package:flutter/material.dart';

class CustomEntrenamientoButton extends StatelessWidget {

  final String imageAsset;
  final String titleCard;
  final Color colorCarta;
  final String estado; 

  
  const CustomEntrenamientoButton({
    Key? key, required this.imageAsset, required this.titleCard, required this.colorCarta, required this.estado
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SizedBox(
        height: size.height * 0.15,
        width: size.width * 0.9,
        child: ElevatedButton(
          onPressed: (){

          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorCarta,
            elevation: 0,
            animationDuration: Duration.zero,
            side: const BorderSide(width: 0, color: Colors.transparent),
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      child: Text(estado, style: TextStyle(color: Colors.black45),),
                    ),
                  ),
                  Text(titleCard,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                  const Text('25 temas | 3 semanas', style: TextStyle(color: Colors.black54))
                ],
              ),
              Image(image: AssetImage(imageAsset)),
            ],
          )
        ),
      ),
    );
  }
}