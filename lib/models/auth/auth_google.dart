import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthenticator{

  static Future<User?> iniciarSesion() async{

    FirebaseAuth authenticator = FirebaseAuth.instance;
    User? user; 

    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null){
      GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken
      );
    try{
      UserCredential userCredential = await authenticator.signInWithCredential(credential);
      user = userCredential.user;
      return user;
    }on FirebaseAuthException catch (e){
      print('Error en la autenticacion');

    }
    }
  }
}