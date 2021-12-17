import 'dart:io';

import 'package:blockchain_pal/pages/Ingresado.dart';
import 'package:blockchain_pal/pages/chatfeed.dart';
import 'package:flutter/material.dart';

class chat extends StatelessWidget {
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
      body: buildBody1(),
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
    return Column(
      children: [
        Container(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                Container(
                  width: 450,
                  height: 450,
                  //color: Colors.orange,
                ),
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: TextField(
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
                        suffixIcon: Icon(
                          Icons.send,
                          color: Color(0xff826AD9),
                          size: 28,
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
    );
  }
}

buildBody1() {
  return ListView(
    children: <Widget>[
      Column(
        children: [
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 30),
                  Container(
                    width: 450,
                    height: 450,
                    //color: Colors.orange,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: TextField(
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
                          suffixIcon: Icon(
                            Icons.send,
                            color: Color(0xff826AD9),
                            size: 28,
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
