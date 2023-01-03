import 'package:doggy/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget {
   
  const SocialScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Scaffold( 
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
              ],
            ),
          ) 
        ),
      )
    );
  }
}