import 'package:flutter/material.dart';
import 'Ingresado.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}):super(key:key);
 @override
  HomeState createState() => HomeState();
  
}

class HomeState extends State<Feed>{
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
        //mainAxisAlignment: MainAxisAlignment.,
        children: <Widget>[
          //img(),
          const SizedBox(
            height:20
          ),
          Align(
            alignment:Alignment.topCenter,
            child:estado()
          ),
          Align(
            alignment: Alignment(0.9, -0.5),
            child:PublicRoute()
          ),
          Align(
            alignment: Alignment(-0.9, -0.10),
            child:Icon(Icons.image_outlined,color:Color(0xff826AD9))),
        ]
        
      )
    )
  );
}
Widget estado(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Que estás pensando?",
        fillColor: Colors.white,
        filled: true,
      ),
      minLines: 4, // any number you need (It works as the rows for the textarea)
      keyboardType: TextInputType.multiline,
      maxLines: null,
    ),
  );
}
class PublicRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
 return MaterialButton(
    minWidth: 100,
    height: 40,
    // ignore: avoid_print
    onPressed: () => {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> const Feed())),
    },
    color: Color(0xff826AD9).withOpacity(0.7),
    child:const Text("Publicar",style: TextStyle(color: Colors.white)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
      side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))
    ),
  );
}
}