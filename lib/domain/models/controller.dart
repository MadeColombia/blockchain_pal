import 'package:get/get.dart';

class MyConttroller extends GetxController {
  var _change = false.obs;
  var _change1 = false.obs;

  bool get change => _change.value;
  bool get change1 => _change.value;

  void cambioChange() {
    _change.value = _change.value == true ? false : true;
  }

  void cambioChange1() {
    _change1.value = _change1.value == true ? false : true;
  }
}
