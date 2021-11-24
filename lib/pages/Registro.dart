import 'package:flutter/material.dart';
import 'Ingresado.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}):super(key:key);
 @override
  HomeState createState() => HomeState();
  
}

class HomeState extends State<Registro>{
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
          nombre(),
          const SizedBox(
            height:10
          ),
          email(),
          const SizedBox(
            height:10
          ),
          contrasena(),
          const SizedBox(
            height:10
          ),
          EnterRoute(),
          const SizedBox(
            height:10
          ),
          TextlineWidget(),
          const SizedBox(
            height:20
          ),
          FacebookRoute(),
          const SizedBox(
            height:10
          ),
          Terminos(),
          const SizedBox(
            height:20
          ),
          Ini()
        ]
      )
    )
  );
}
Widget nombre(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Nombre",
        fillColor: Colors.white,
        filled: true,
      )
    ),
    width: 375,
    height: 56
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
    child:const Text("Registrarme",style: TextStyle(color: Colors.white)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Color(int.parse("0xff${'826AD9'}")))
    ),
  );
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
        const Text("Registrarme con Facebook", textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Poppins',color: Colors.white)), // text
      ],
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Color(int.parse("0xff${'826AD9'}")))
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
      children: [const SizedBox(height: 10),
      Image.asset('images/logo.png',height:100),
      ]
      ),
    );
}
class Terminos extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Column(
              children:[
                Text('Al registrarse acepta los', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(28, 2, 64, 1),
        fontFamily: 'Poppins',
        fontSize: 13,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.5 /*PERCENT not supported*/
      ),),
      Text('terminos y política de privacidad', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(28, 2, 64, 1),
        fontFamily: 'Poppins',
        fontSize: 13,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.bold,
        height: 1.5 /*PERCENT not supported*/
      ),)
              ]
            ) ;
            
          }
        }
class Ini extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Column(
              children:[
                Text('¿Ya tienes cuenta?', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(28, 2, 64, 1),
        fontFamily: 'Poppins',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1.5 /*PERCENT not supported*/
      ),),
      Text('Inicia sesión', textAlign: TextAlign.center, style: TextStyle(
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

