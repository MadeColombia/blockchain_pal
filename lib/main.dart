import 'package:blockchain_pal/pages/Landing.dart';
import 'package:flutter/material.dart';
import 'package:blockchain_pal/domain/models/controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //para convertir de sin estado a con estado pulsar ctrl+.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Get.put(MyConttroller());

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Landing(),
      ),
    );
  }
}
