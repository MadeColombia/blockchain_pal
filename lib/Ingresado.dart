import 'package:flutter/material.dart';

import 'Feed.dart';
import 'Registro.dart';

class Ingresado extends StatefulWidget {
  const Ingresado({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
class HomeState extends State<Ingresado>{
  int _paginaactual=0;
  List<Widget> _paginas=[
   Feed(),
   Registro(),
   Registro(),
   Registro(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        //body:_paginaactual==0? PaginaHome(): PaginaUser(), solo sirve si son dos paginas
        body:_paginas[_paginaactual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){ //cuando se pulse, toma el indice de ese icono y cambia el estado de la variable paginaactual
            setState(() {
              _paginaactual=index;
            });
          },
          currentIndex: _paginaactual,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color:Color(0xff826AD9)), label:"Feed"),
          BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_outlined,color:Color(0xff826AD9)),label: "Ubicación"),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined,color:Color(0xff826AD9)),label:"Mensajes"),
          //BottomNavigationBarItem(icon: Icon(Icons.supervisor_account_outlined),label:"User"),
        ]),
      ),
    );
  }
}
