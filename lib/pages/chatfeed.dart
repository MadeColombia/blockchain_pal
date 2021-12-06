import 'package:blockchain_pal/pages/Landing.dart';
import 'package:flutter/material.dart';
import 'Ingresado.dart';

class chatfeed extends StatefulWidget {
  const chatfeed({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<chatfeed> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(body: cuerpo()));
  }
}

Widget cuerpo() {
  return Column()
  appBar: AppBar(
    title: Text("hola"),
  )
}
