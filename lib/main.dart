import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          //
          centerTitle: true,
          title: const Text('Pagina Inicial'),
          elevation: 20.0,
          shadowColor: Colors.blue,
          //
          //
          //
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search), onPressed: () => {})
            /*IconButton(
              icon: Icon(Icons.note) onPressed () => {
                print('Boton de notas')
              }
            )*/
          ],
        ),
        body: Center(
            child: ElevatedButton(
                child: const Text('Segunda Pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );

                  Navigator.push(context, route);
                })));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Información'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Regresar'),
        onPressed: () => Navigator.pop(context),
      )),
    );
  }
}
