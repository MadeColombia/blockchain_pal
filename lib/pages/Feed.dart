import 'package:blockchain_pal/pages/Landing.dart';
import 'package:flutter/material.dart';
import 'Ingresado.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(body: cuerpo()));
  }
}

Widget cuerpo() {
  return Column(
    children: [
      Container(
          child: Center(
              child: Column(children: <Widget>[
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/perfil.png'),
            Expanded(child: estado()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Icon(Icons.image_outlined, color: Color(0xff826AD9)),
            IconButton(
              icon: Icon(Icons.image, color: Color(0xff826AD9)),
              onPressed: () {},
            ),
            Icon(Icons.gif_sharp, color: Color(0xff826AD9)),
            Icon(Icons.image_aspect_ratio, color: Color(0xff826AD9)),
            Icon(Icons.imagesearch_roller_rounded, color: Color(0xff826AD9)),
            Align(alignment: Alignment(0.9, -0.5), child: PublicRoute()),
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/perfil2.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 20,
                  width: 350,
                  child: Text(
                    "Erick Lawrence",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 70,
                  width: 350,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales molestie elit, sit amet maximus libero blandit non. Integer quis tortor justo. ",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/perfil3.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 20,
                  width: 350,
                  child: Text(
                    "Hilman Nuris",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 70,
                  width: 350,
                  child: Text(
                    "Sendhil Mullainathan y Eldar Shafir, en su libro “Escasez: ¿Por qué tener tan poco significa tanto?”, publicado en español por el Fondo de Cultura Económica, resumen buena parte de la investigación más reciente sobre los efectos que tiene la escasez en la toma de decisiones. ",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/perfil4.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 20,
                  width: 350,
                  child: Text(
                    "Jennifer Dunn",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 70,
                  width: 350,
                  child: Text(
                    "México ha olvidado lecciones fundamentales de su propia historia y sus éxitos y fracasos en el camino hacia el desarrollo ",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ]))),
    ],
  );
}

Widget estado() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Que estás pensando?",
        fillColor: Colors.white,
        filled: true,
      ),
      minLines:
          2, // any number you need (It works as the rows for the textarea)
      keyboardType: TextInputType.multiline,
      maxLines: null,
    ),
  );
}

class PublicRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 100,
      height: 40,
      // ignore: avoid_print
      onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Feed())),
      },
      color: Color(0xff826AD9).withOpacity(0.7),
      child: const Text("Publicar", style: TextStyle(color: Colors.white)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}
