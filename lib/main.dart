import 'package:flutter/material.dart';
import 'data/constants.dart';
import 'footer/footer.dart';
import 'gallery/gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title='';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reto 2 de Flutter',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      body: ListView(
        // Hacemos el llamado de nuestras dos constantes para la orientación de nuestros listView
        children: <Widget>[
          gallery(HORIZONTAL),
          gallery(VERTICAL),
        ],
      ),
      // Colocamos nuestro footer
      bottomNavigationBar: footerGallery(),
    );
  }
}



