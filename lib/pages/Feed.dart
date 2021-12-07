import 'package:blockchain_pal/pages/Landing.dart';
import 'package:flutter/material.dart';
import 'Ingresado.dart';
import 'package:blockchain_pal/domain/models/controller.dart';
import 'package:get/get.dart';

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
        iconEstado(),
        const SizedBox(height: 50),
        cambio1(),
      ]))),
    ],
  );
}

Widget cambio1() {
  MyConttroller myConttroller = Get.find();
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Obx(() => Column(
              children: [
                myConttroller.change ? publicado() : sinpublicar(),
              ],
            )),
      ),
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

Widget iconEstado() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //Icon(Icons.image_outlined, color: Color(0xff826AD9)),
      IconButton(
        icon: Icon(Icons.image, color: Color(0xff826AD9)),
        onPressed: () {},
      ),
      Icon(Icons.gif_sharp, color: Color(0xff826AD9)),
      Icon(Icons.image_aspect_ratio, color: Color(0xff826AD9)),
      Icon(Icons.emoji_emotions_outlined, color: Color(0xff826AD9)),
      Align(alignment: Alignment(0.9, -0.5), child: PublicRoute()),
    ],
  );
}

class PublicRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyConttroller myConttroller = Get.find();
    return MaterialButton(
      minWidth: 100,
      height: 40,
      // ignore: avoid_print
      onPressed: () => {
        myConttroller.cambioChange(),
      },
      color: Color(0xff826AD9).withOpacity(0.7),
      child: const Text("Publicar", style: TextStyle(color: Colors.white)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}

class feedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset('images/perfil2.png'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 20,
              width: 300,
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
              width: 300,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales molestie elit, sit amet maximus libero blandit non. Integer quis tortor justo. ",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        )
      ],
    );
  }
}

class feedRoute1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset('images/perfil3.png'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 20,
              width: 300,
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
              width: 300,
              child: Text(
                "Sendhil Mullainathan y Eldar Shafir, en su libro “Escasez: ¿Por qué tener tan poco significa tanto?”, publicado en español por el Fondo de Cultura Económica, resumen buena parte de la investigación más reciente sobre los efectos que tiene la escasez en la toma de decisiones. ",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        )
      ],
    );
  }
}

class feedRoute2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset('images/perfil4.png'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 20,
              width: 300,
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
              width: 300,
              child: Text(
                "México ha olvidado lecciones fundamentales de su propia historia y sus éxitos y fracasos en el camino hacia el desarrollo ",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        )
      ],
    );
  }
}

class feedRoute3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset('images/perfil.png'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 20,
              width: 300,
              child: Text(
                "Stiven Sterling",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 70,
              width: 300,
              child: Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        )
      ],
    );
  }
}

Widget publicado() {
  return Column(
    children: [
      feedRoute3(),
      const SizedBox(
        height: 40,
      ),
      feedRoute1(),
      const SizedBox(
        height: 40,
      ),
      feedRoute2(),
    ],
  );
}

Widget sinpublicar() {
  return Column(
    children: [
      feedRoute(),
      const SizedBox(
        height: 40,
      ),
      feedRoute1(),
      const SizedBox(
        height: 40,
      ),
      feedRoute2(),
    ],
  );
}
