import 'package:flutter/material.dart';
import 'chat.dart';
import 'package:path/path.dart';

class chatfeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      body: buildBody(context),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 50,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
    );
  }

  buildBody(context) {
    return Column(
      children: [
        Container(
          child: Center(
              child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 0.0),
                  ),
                  Image.asset('images/perfil.png', height: 50),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 20,
                        //color: Colors.orange,
                        child: Text("Mis mensajes",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromRGBO(48, 48, 48, 1),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        child: Text("2 nuevos mensajes",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromRGBO(199, 201, 217, 1),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 50.0, bottom: 10.0, left: 120.0),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Color(0xff826AD9),
                    size: 35,
                  ),
                ],
              ),
              //EMPIEZA BARRA DE BUSQUEDA
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Buscar",
                        hintStyle: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(157, 159, 160, 1)),
                        fillColor: Color(0xfff6f7fa),
                        filled: true,
                        //border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(0xff826AD9),
                          size: 30,
                        ),
                      ),
                      minLines:
                          1, // any number you need (It works as the rows for the textarea)
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
                  ),
                ],
              ), //TERMINA BARRA BUSQUEDA
              //EMPIEZA CARTAS DE USUARIO
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chat(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromRGBO(238, 238, 238, 1)),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 10.0, bottom: 10.0, left: 0.0),
                      ),
                      Image.asset('images/perfil5.png', height: 60),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, bottom: 8.0, right: 75.0),
                            width: 120,
                            height: 20,
                            //color: Colors.orange,
                            child: Text("Alejandro",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            child: Text(
                                "Hola!, puedo preguntarte algo?, \n necesito tu ayuda",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 140, 140, 0.6),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 50.0, bottom: 10.0, left: 20.0),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 25.0, bottom: 0.0, left: 10.0),
                            child: Text("15 min",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromRGBO(199, 201, 217, 1),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 45.0),
                            child: Icon(
                              Icons.brightness_1,
                              color: Color(0xff826AD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ), //TERMINA CARTA
              //EMPIEZA CARTAS DE USUARIO 2
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chat(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromRGBO(238, 238, 238, 1)),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 10.0, bottom: 10.0, left: 0.0),
                      ),
                      Image.asset('images/perfil3.png', height: 60),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, bottom: 8.0, right: 45.0),
                            width: 160,
                            height: 20,
                            //color: Colors.orange,
                            child: Text("Santiago Alarcon",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, bottom: 0.0, right: 35.0),
                            child: Text("Gracias por la información!",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 140, 140, 0.6),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 50.0, bottom: 10.0, left: 20.0),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 25.0, bottom: 0.0, left: 10.0),
                            child: Text("30 min",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromRGBO(199, 201, 217, 1),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 45.0),
                            child: Icon(
                              Icons.brightness_1,
                              color: Color(0xff826AD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ), //TERMINA CARTA 2
              //EMPIEZA CARTAS DE USUARIO 3
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chat(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromRGBO(238, 238, 238, 1)),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 10.0, bottom: 10.0, left: 0.0),
                      ),
                      Image.asset('images/perfil2.png', height: 60),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, bottom: 8.0, right: 25.0),
                            width: 180,
                            height: 20,
                            //color: Colors.orange,
                            child: Text("Juan David Guzman",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            child: Text(
                                "El curso gratuito de diseño está a\n punto de caducar",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 140, 140, 0.6),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 50.0, bottom: 10.0, left: 20.0),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 25.0, bottom: 0.0, left: 20.0),
                            child: Text("Ayer",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromRGBO(199, 201, 217, 1),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 35.0),
                            child: Icon(
                              Icons.brightness_1_outlined,
                              color: Color(0xff826AD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ), //TERMINA CARTA 3
              //EMPIEZA CARTAS DE USUARIO 4
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chat(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromRGBO(238, 238, 238, 1)),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 25.0),
                      ),
                      Image.asset('images/perfil4.png', height: 60),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, bottom: 8.0, right: 65.0),
                            width: 120,
                            height: 20,
                            //color: Colors.orange,
                            child: Text("Isabella",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 0.0, bottom: 0.0, right: 0.0),
                            child: Text(
                                "Por eso necesito los apuntes\n de la clase anterior",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromRGBO(140, 140, 140, 0.6),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Container(
                        width: 0,
                        //color: Colors.red,
                        margin: EdgeInsets.only(
                            top: 50.0, bottom: 10.0, right: 0.0),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 25.0, bottom: 0.0, right: 12.0),
                            child: Text("Hace 2 semanas",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromRGBO(199, 201, 217, 1),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 45.0),
                            child: Icon(
                              Icons.brightness_1_outlined,
                              color: Color(0xff826AD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ), //TERMINA CARTA 4
            ],
          )),
        ),
      ],
    );
  }
}
