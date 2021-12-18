import 'package:blockchain_pal/pages/Landing.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:blockchain_pal/pages/chat.dart';

class MyConttroller extends GetxController {
  var _change = false.obs;
  var _change1 = false.obs;
  var _texto = "11111".obs;
  var _colorchat = 0xffffffff.obs;

  bool get change => _change.value;
  bool get change1 => _change.value;
  String get texto => _texto.value;
  int get colorchat => _colorchat.value;

  void cambioChange() {
    _change.value = _change.value == true ? false : true;
  }

  void cambioChange1() {
    _change1.value = _change1.value == true ? false : true;
  }

  void cambioTexto(String colorTexto) {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    _texto.value = colorTexto;
    //prefs.setString("value", value);
  }

  void cambioColorContainer(int colorContainer) {
    _colorchat.value = colorContainer;
  }
}
