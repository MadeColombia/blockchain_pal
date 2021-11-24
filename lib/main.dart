import 'package:flutter/material.dart';
import 'package:proyecto/pages/Landing.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget { //para convertir de sin estado a con estado pulsar ctrl+.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        //body:_paginaactual==0? PaginaHome(): PaginaUser(), solo sirve si son dos paginas
        body: Landing(),
      ),
    );
  }
}
