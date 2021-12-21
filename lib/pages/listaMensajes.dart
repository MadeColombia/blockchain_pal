import 'package:blockchain_pal/pages/chatfeed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blockchain_pal/datos/mensaje.dart';
import 'package:blockchain_pal/datos/mensaje_A.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:blockchain_pal/widget/mensajewidget.dart';

class ListaMensajes extends StatefulWidget {
  ListaMensajes({Key? key}) : super(key: key);
  final mensajeA = MensajeA();

  @override
  _ListaMensajesState createState() => _ListaMensajesState();
}

class _ListaMensajesState extends State<ListaMensajes> {
  ScrollController _scrollController = ScrollController();
  TextEditingController _mensajesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => _scrollHaciaAbajo()); //bajar

    //return

    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _getListaMensajes(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: _mensajesController,
                        onChanged: (text) => setState(() {}),
                        onSubmitted: (input) {
                          _enviarMensaje();
                        },
                        decoration: InputDecoration(
                          hintText: 'Escribe un Mensaje',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      )),
                ),
                IconButton(
                  icon: Icon(
                    _puedoEnviarMensaje()
                        ? CupertinoIcons.arrow_right_circle_fill
                        : CupertinoIcons.arrow_right_circle,
                    color: Color(0xff826AD9),
                  ),
                  onPressed: () {
                    _enviarMensaje();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getListaMensajes() {
    return Expanded(
      child: FirebaseAnimatedList(
        controller: _scrollController,
        query: widget.mensajeA.getMensajes(),
        itemBuilder: (context, snapshot, animation, index) {
          final json = snapshot.value as Map<dynamic, dynamic>;
          final mensaje = Mensaje.fromJson(json);
          return MensajeWidget(mensaje.texto, mensaje.fecha);
        },
      ),
    );
  }

  void _scrollHaciaAbajo() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }

  void _enviarMensaje() {
    if (_puedoEnviarMensaje()) {
      final mensaje = Mensaje(_mensajesController.text, DateTime.now());
      widget.mensajeA.guardarMensaje(mensaje);
      _mensajesController.clear();
      setState(() {});
    }
  }

  bool _puedoEnviarMensaje() => _mensajesController.text.length > 0;
}

AppBar buildAppBar(context) {
  return AppBar(
    toolbarHeight: 80,
    elevation: 6,
    bottomOpacity: 1,
    shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
    automaticallyImplyLeading: true,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios_new),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => chatfeed(),
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
                      margin:
                          EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
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
