import 'package:blockchain_pal/pages/Landing.dart';
import 'package:flutter/material.dart';
import 'Ingresado.dart';

class CryptoMarket extends StatefulWidget {
  const CryptoMarket({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<CryptoMarket> {
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
        const SizedBox(height: 70),
        mensaje(),
        //row buscar monedas y busqueda
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(width: 20),
            Expanded(child: buscarMoneda()),
            Icon(
              Icons.search,
              color: Color(0xff826AD9),
              size: 40,
            ),
          ],
        ),
        //row favoritos todas hot
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(child: FavoritasRoute()),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: TodasRoute()),
            const SizedBox(
              width: 100,
            ),
            Expanded(child: HotRoute()),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        CryptoRoute(),
        const SizedBox(
          height: 20,
        ),
        CryptoRoute1(),
        const SizedBox(
          height: 20,
        ),
        CryptoRoute2(),
        const SizedBox(
          height: 20,
        ),
        CryptoRoute3()
      ]))),
    ],
  );
}

Widget mensaje() {
  return Center(
      child: Container(
          width: 346,
          height: 86,
          child: Row(children: <Widget>[
            Text(
              'Crypto',
              style: TextStyle(
                color: Color.fromRGBO(48, 48, 48, 1),
                fontFamily: 'Poppins',
                fontSize: 40,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Market',
              style: TextStyle(
                color: Color.fromRGBO(48, 48, 48, 1),
                fontFamily: 'Poppins',
                fontSize: 40,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                //fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(width: 50),
            iconoNoti()
          ])));
}

Widget iconoNoti() {
  // ...
  return Center(
    child: Row(children: [
      Icon(
        Icons.notifications,
        color: Color(0xff826AD9),
        size: 50,
      ),
    ]),
  );
}

Widget buscarMoneda() {
  return Container(
    //padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Buscar moneda",
        fillColor: Color(0xfff6f7fa),
        filled: true,
      ),
      minLines:
          1, // any number you need (It works as the rows for the textarea)
      keyboardType: TextInputType.multiline,
      maxLines: null,
    ),
  );
}

class FavoritasRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 100,
      height: 30,
      // ignore: avoid_print
      onPressed: () => {
        // Navigator.push(context,
        //  MaterialPageRoute(builder: (context) => const CryptoMarket())),
      },
      color: Color(0xffa89abd).withOpacity(0.7),
      child: const Text("Favoritas", style: TextStyle(color: Colors.white)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}

class TodasRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 100,
      height: 30,
      // ignore: avoid_print
      onPressed: () => {
        // Navigator.push(context,
        //  MaterialPageRoute(builder: (context) => const CryptoMarket())),
      },
      color: Color(0xffa89abd).withOpacity(0.7),
      child: const Text("Todas", style: TextStyle(color: Colors.white)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}

class HotRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 100,
      height: 30,
      // ignore: avoid_print
      onPressed: () => {
        // Navigator.push(context,
        //  MaterialPageRoute(builder: (context) => const CryptoMarket())),
      },
      color: Color(0xffa89abd).withOpacity(0.7),
      child: const Text(
        "Hot↑↓",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}

class CryptoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 380,
      height: 70,
      // ignore: avoid_print
      onPressed: () => {
        // Navigator.push(context,
        //  MaterialPageRoute(builder: (context) => const CryptoMarket())),
      },
      color: Color(0xfff6f7fa).withOpacity(0.7),

      child: const Text(
        "BTC                                \u0024 57,609.85",
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}

class CryptoRoute1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 380,
      height: 70,
      // ignore: avoid_print
      onPressed: () => {
        // Navigator.push(context,
        //  MaterialPageRoute(builder: (context) => const CryptoMarket())),
      },
      color: Color(0xfff6f7fa).withOpacity(0.7),

      child: const Text(
        "ETH                                 \u0024 4,302.38",
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}

class CryptoRoute2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 380,
      height: 70,
      // ignore: avoid_print
      onPressed: () => {
        // Navigator.push(context,
        //  MaterialPageRoute(builder: (context) => const CryptoMarket())),
      },
      color: Color(0xfff6f7fa).withOpacity(0.7),

      child: const Text(
        "BNB                                   \u0024 302.38",
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}

class CryptoRoute3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 380,
      height: 70,
      // ignore: avoid_print
      onPressed: () => {
        // Navigator.push(context,
        //  MaterialPageRoute(builder: (context) => const CryptoMarket())),
      },
      color: Color(0xfff6f7fa).withOpacity(0.7),

      child: const Text(
        "LTC                                     \u0024 208.38",
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Color(0xff826AD9).withOpacity(0.4))),
    );
  }
}
