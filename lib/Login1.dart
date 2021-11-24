import 'package:flutter/material.dart';
import 'Ingresado.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}):super(key:key);
 @override
  HomeState createState() => HomeState();
  
}

class HomeState extends State<Login1>{
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: cuerpo()
      )
    );
  }
}
Widget cuerpo(){
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          img(),
          const SizedBox(
            height:20
          ),
          email(),
          const SizedBox(
            height:10
          ),
          contrasena(),
          const SizedBox(
            height:20
          ),
          EnterRoute(),
          const SizedBox(
            height:10
          ),
          OlvidastecontraseaWidget(),
          const SizedBox(
            height:10
          ),
          TextlineWidget(),
          const SizedBox(
            height:30
          ),
          FacebookRoute(),
          const SizedBox(
            height:10
          ),
          FingerRoute(),
          const SizedBox(
            height:10
          ),
          Regi()
        ]
      )
    )
  );
}

Widget email(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Email",
        fillColor: Colors.white,
        filled: true,
      )
    ),
    width: 375,
    height: 56
  );
}
Widget contrasena(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      )
    ),
    width: 375,
    height: 56
  );
}
class EnterRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
 return MaterialButton(
    minWidth: 343,
    height: 40,
    // ignore: avoid_print
    onPressed: () => {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> const Ingresado())),
    },
    color: Color(int.parse("0xff${'826AD9'}")),
    child:const Text("Ingresar",style: TextStyle(color: Colors.white)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Color(int.parse("0xff${'826AD9'}")))
    ),
  );
}
}
class OlvidastecontraseaWidget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Text('Olvidaste contraseña?', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(28, 2, 64, 1),
        fontFamily: 'Poppins',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.5 /*PERCENT not supported*/
      ),);
          }
        }
class FacebookRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
 return MaterialButton(
    minWidth: 343,
    height: 40,
    // ignore: avoid_print
    onPressed: () => {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> const Ingresado())),
    },
    color: Color(int.parse("0xff${'0082CD'}")),
    //child:const Text("Iniciar Sesion con Facebook",style: TextStyle(fontFamily: 'Poppins',color: Colors.white)),
    child: Column(
      children: <Widget>[
        const Icon(Icons.facebook, color: Colors.white), // icon
        const Text("Iniciar Sesion con Facebook", textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Poppins',color: Colors.white)), // text
      ],
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Color(int.parse("0xff${'0082CD'}")))
    ),
  );
}
}
class FingerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
 return MaterialButton(
    minWidth: 343,
    height: 40,
    // ignore: avoid_print
    onPressed: () => {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> const Ingresado())),
    },
    color: Colors.white,
    //child:const Text("Iniciar Sesion con Facebook",style: TextStyle(fontFamily: 'Poppins',color: Colors.white)),
    child: Column(
      children: <Widget>[
        const Icon(Icons.fingerprint, color: Color(0xff826AD9)), // icon
        const Text("Iniciar Sesion con Huella",style: TextStyle(color: Color(0xff826AD9))), // text
      ],
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Colors.white, width:1.5)
    ),
  );
}
}
class TextlineWidget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator TextlineWidget - GROUP
            return Container(
      width: 361,
      height: 24,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 14,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(199, 201, 217, 1),
        thickness: 1
      )
      
      ),Positioned(
        top: 14,
        left: 213,
        child: Divider(
        color: Color.fromRGBO(199, 201, 217, 1),
        thickness: 1
      )
      
      ),Divider(
        color: Color.fromRGBO(199, 201, 217, 1),
        thickness: 1
      ),Positioned(
        top: 0,
        left: 177,
        child: Text('ó', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(140, 140, 140, 1),
        fontFamily: 'Poppins',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.5 /*PERCENT not supported*/
      ),)
      ),
        ]
      )
    );
          }
        }
Widget img() {
  // ...
  return Center(
    child: Column(
      children: [const SizedBox(height: 40),
      Image.asset('images/logo.png',height:90),
      ]
      ),
    );
}
class Regi extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Column(
              children:[
                Text('¿No tienes cuenta?', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(28, 2, 64, 1),
        fontFamily: 'Poppins',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.5 /*PERCENT not supported*/
      ),),
      Text('Registrate', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(28, 2, 64, 1),
        fontFamily: 'Poppins',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.bold,
        height: 1.5 /*PERCENT not supported*/
      ),)
              ]
            ) ;
            
          }
        }

