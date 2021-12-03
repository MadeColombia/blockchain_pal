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
            Icon(Icons.image_outlined, color: Color(0xff826AD9)),
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
                Text(
                  "Erick Lawrence",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/perfil3.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hilman Nuris",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/perfil4.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Jennifer Dunn",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
                Text("sit amet maximus libero blandit non. Integer quis.."),
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
