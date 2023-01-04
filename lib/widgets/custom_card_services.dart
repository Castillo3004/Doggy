import 'package:flutter/material.dart';

class CustomCardService extends StatelessWidget {

  final String imageAsset;
  final String titleCard;
  
  const CustomCardService({
    Key? key, required this.imageAsset, required this.titleCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.lightBlue[400],
      child: Center(
        child: Column(
          children:[
            ListTile(
              leading: Image(
                image: AssetImage(imageAsset),
              ),
              title:
              Text(titleCard),

            ),
          ],
        ),
      ),
    );
  }
}