//import 'dart:html';
//import 'dart:html';
import 'dart:io';
import 'package:blockchain_pal/domain/models/controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:blockchain_pal/pages/Ingresado.dart';
import 'package:blockchain_pal/pages/chatfeed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class chat extends StatefulWidget {
  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  final mensaje = TextEditingController();
  String value = '';
  int value2 = 2;

  String men = '';
  int col = 0xffffffff;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cargarPreferencias2();
  }

  @override
  Widget build(BuildContext context) {
    final focusedCtx = FocusManager.instance.primaryFocus!.context;
    Future.delayed(const Duration(milliseconds: 400))
        .then((_) => Scrollable.ensureVisible(
              focusedCtx!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
            ));
    return Scaffold(
      appBar: buildAppBar(context),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          child: buildBody(),
        ),
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      toolbarHeight: 80,
      elevation: 6,
      bottomOpacity: 1,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Ingresado(),
          ),
        ),
        color: Color(0xff826AD9),
      ),
      title: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, right: 10.0),
                        child: Image.asset('images/perfil5.png', height: 40),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 165,
                            height: 20,
                            //color: Colors.orange,
                            child: Text("Alejandro",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text("Activo(a) hace 10 minutos",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(199, 201, 217, 1),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildBody() {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setString("value", men);

    MyConttroller myConttroller = Get.find();
    final textController = TextEditingController();
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Image.asset('images/perfil5.png',
                                    height: 40),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff826ad9),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0),
                                    ),
                                  ),
                                  width: 300,
                                  height: 80,
                                  //color: Colors.blue,
                                  child: Center(
                                      child: Text(
                                    "Hola!, puedo preguntarte algo?, \n necesito tu ayuda",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ))
                                  //textAlign: TextAlign.start,
                                  ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                    color: Color(myConttroller.colorchat),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0),
                                    ),
                                  ),
                                  width: 300,
                                  height: 80,
                                  //color: Colors.blue,
                                  child: Center(
                                      child: Obx(
                                    () => Text(
                                      myConttroller.texto,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    ),
                                  ))
                                  //textAlign: TextAlign.start,
                                  ),
                              Container(
                                child: Image.asset('images/perfil.png',
                                    height: 40),
                              ),
                            ],
                          ),
                        ],
                      ),
                      width: 450,
                      height: 450,
                      color: Colors.white,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextField(
                          controller: mensaje,

                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: "Mensaje",
                            hintStyle: TextStyle(
                                fontSize: 17,
                                color: Color.fromRGBO(157, 159, 160, 1)),
                            fillColor: Color(0xfff6f7fa),
                            filled: true,
                            //border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Color(0xff826AD9),
                              size: 28,
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(Icons.send),
                                color: Color(0xff826AD9),
                                onPressed: () => {
                                      men = mensaje.text,
                                      //print(men),
                                      mensaje.clear(),
                                      myConttroller.cambioTexto(men),
                                      myConttroller.cambioColorContainer(col),
                                      _cargarPreferencias1(),
                                      SystemChannels.textInput
                                          .invokeMethod('TextInput.hide'),
                                    }

                                //size: 28,
                                ),
                          ),
                          minLines:
                              1, // any number you need (It works as the rows for the textarea)
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  _cargarPreferencias1() async {
    //para guardar el valor en shared_preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    value = men;
    prefs.setString("value", value);

    //int value2 = 0;
    //value2 = col;
    //prefs.setInt("value1", value2);
  }

  _cargarPreferencias2() async {
    //para llamar el valor guardado en shared_preferences (initestate)
    SharedPreferences prefs = await SharedPreferences.getInstance();
    MyConttroller myConttroller = Get.find();
    String _value3 = "";
    int value4 = 0;

    _value3 = prefs.getString("value") ?? '';
    myConttroller.cambioTexto(_value3);

    //value4 = prefs.getInt("value1")!;

    //myConttroller.cambioColorContainer(value4);
  }
}
