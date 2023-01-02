import 'package:flutter/material.dart';

import 'package:doggy/theme/app_theme.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
   
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    //TODO: Arreglar Imagen
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/portada-login.png'),
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Image(
                  image: AssetImage('assets/puente-arcoiris.png'), 
                  fit: BoxFit.contain, 
                  width: 250,
                  ),
                const Text('Iniciar Sesion',
                style: TextStyle(
                  color: AppTheme.primary,
                  fontSize: 38,
                  fontFamily: 'AveriaSansLibre'
                ), 
                ),
                const SizedBox(
                  height: 100,
                ),
                const CustomInputField(labelText: 'Correo o Usuario', hintText: 'Correo o Usuario',keyboardType: TextInputType.emailAddress,),
                const SizedBox(
                  height: 40,
                ),
                const CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña', obscureText: true,),
                const SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Center( child: Text('Ingresar'))
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  child: Text('¿Olvidaste tu contraseña?', 
                    style: TextStyle(color: Colors.brown[300]) ,
                  ),
                  onPressed: (){} 
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'ó', style: TextStyle(color: Colors.brown)
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.amber[600],
                      fontSize: 20
                    ),),
                  onPressed: (){} 
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: (){}, 
                      child: 
                      const Image(
                        image: AssetImage('assets/Facebook.png'),
                        fit: BoxFit.cover,
                        height: 40,
                      ),
                    ),
                    const SizedBox( width: 20),
                    TextButton(
                      onPressed: (){}, 
                      child: 
                      const Image(
                        image: AssetImage('assets/Google.png'),
                        fit: BoxFit.cover,
                        height: 40,
                      ),
                    ),
                    const SizedBox( width: 20),
                    TextButton(
                      onPressed: (){}, 
                      child: 
                      const Image(
                        image: AssetImage('assets/Outlook.png'),
                        fit: BoxFit.cover,
                        height: 40,
                      ),
                    )
                  ],
                )
              ]
            ),
          ),
        ),
  
      ),
    );
  }
}
