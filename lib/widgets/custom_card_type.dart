
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
   
  final String imageUrl;
  final String? nameCard;
  final String backgroundImage;

  const CustomCardType2({
    Key? key, 
    required this.imageUrl,
    this.nameCard, 
    required this.backgroundImage
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children:[
          Row(
            
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 20),
                child: CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: NetworkImage(backgroundImage),
                ),
              ),
              const Text('Usuario 1'),
              const SizedBox(width: 145,),
              IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.bookmark_add, size: 25, color: Colors.black),
                  splashRadius: 25,
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(7.0),
                child: Text('Consequat culpa laborum non deserunt sint.', style: TextStyle(fontSize: 13),),
              
              ),
            ],
          ),
          FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/imagen1.gif',),
            width: double.infinity,
            fit: BoxFit.cover,
            height: 320,
            fadeInDuration: const Duration(milliseconds: 100),
          ),
          if(nameCard != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( nameCard!),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.favorite, size: 25, color: Colors.black),
                  splashRadius: 25,
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.comment, size: 25, color: Colors.black),
                  splashRadius: 25,
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.share, size: 25, color: Colors.black),
                  splashRadius: 25,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}