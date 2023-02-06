import 'package:flutter/material.dart';

class PerfilMascotaScreen extends StatelessWidget {
   
  const PerfilMascotaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil', style: TextStyle(fontFamily: 'AveriaSansLibre')),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffE2AF6E),
      ),
      body: Center(
        child: Column(
          children: const [
            _FotoPerfil(),
            _EstatsPerfil(),
            _GridFotos()
          ],
        ),
      ),
    );
  }
}

class _GridFotos extends StatelessWidget {
  const _GridFotos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(15, (index) {
          return const Padding(
            padding: EdgeInsets.all(5),
            child: Image(
              image: NetworkImage('https://images.ecestaticos.com/h34TvzTFVdrau9Un4Wdmwhed_e4=/0x115:2265x1390/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F8ec%2F08c%2F85c%2F8ec08c85c866ccb70c4f1c36492d890f.jpg'), 
              fit: BoxFit.cover,
            ),
          );
        }),
      )
    );
  }
}

class _EstatsPerfil extends StatelessWidget {
  const _EstatsPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 80,
              child: TextButton(
                onPressed: (){}, 
                child: const Text('Me gusta \n6', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54)),
              ),
            ),
            const Text('|', style: TextStyle(fontSize: 20, color: Colors.black54)),
            SizedBox(
              height: 50,
              width: 80,
              child: TextButton(
                onPressed: (){}, 
                child: const Text('Fotos \n 15', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54)),
              ),
            )
          ],
        ),
      );
  }
}

class _FotoPerfil extends StatelessWidget {
  const _FotoPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children:[
          const CircleAvatar(
            maxRadius: 60,
            backgroundImage: NetworkImage('https://definicion.de/wp-content/uploads/2013/03/perro-1.jpg'),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 35,
              width: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero
                ),
                onPressed: (){},
                child: const Icon(Icons.edit),
              ),
            )
          )
        ],
      ),
    );
  }
}