import 'package:get/get.dart';

class MyConttroller extends GetxController {
  var _esRojo = false.obs;
  var _texto = false.obs;
  var _change = false.obs;
  var _change1 = false.obs;

  bool get esRojo => _esRojo.value;
  bool get texto => _texto.value;
  bool get change => _change.value;
  bool get change1 => _change.value;

  void cambioRojo() {
    _esRojo.value = _esRojo.value == true ? false : true;
  }

  void cambioTexto() {
    _texto.value = _texto.value == true ? false : true;
  }

  void cambioChange() {
    _change.value = _change.value == true ? false : true;
  }

  void cambioChange1() {
    _change1.value = _change1.value == true ? false : true;
  }
}
