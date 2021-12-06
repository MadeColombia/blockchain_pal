import 'package:flutter/material.dart';
import 'Login1.dart';
import 'Registro.dart';
import 'chatfeed.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(body: cuerpo()));
  }
}

Widget cuerpo() {
  return Container(
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
        img(),
        const SizedBox(height: 20),
        mensaje(),
        const SizedBox(height: 20),
        LoginRoute(),
        const SizedBox(height: 10),
        RegisRoute(),
      ])));
}

Widget mensaje() {
  return Center(
      child: Container(
          width: 346,
          height: 86,
          child: Column(children: const <Widget>[
            Text(
              'Bienvendio a Blockchain Pal',
              style: TextStyle(
                color: Color.fromRGBO(48, 48, 48, 1),
                fontFamily: 'Poppins',
                fontSize: 24,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'La red social perfecta para los cryptomaniacos',
              style: TextStyle(
                color: Color.fromRGBO(140, 140, 140, 1),
                fontFamily: 'Poppins',
                fontSize: 16,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
              ),
            ),
          ])));
}

class LoginRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 343,
      height: 40,
      // ignore: avoid_print
      onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login1())),
      },
      color: Color(int.parse("0xff${'826AD9'}")),
      child:
          const Text("Iniciar Sesión", style: TextStyle(color: Colors.white)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Color(int.parse("0xff${'826AD9'}")))),
    );
  }
}

class RegisRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 343,
      height: 40,
      // ignore: avoid_print
      onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Registro())),
      },
      color: Colors.white,
      child:
          const Text("Registrarme", style: TextStyle(color: Color(0xff826AD9))),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
              color: Color(int.parse("0xff${'826AD9'}")), width: 1.5)),
    );
  }
}

Widget img() {
  // ...
  return Center(
    child: Column(children: [
      Image.asset('images/logo.png', height: 200, width: 200),
    ]),
  );
}
