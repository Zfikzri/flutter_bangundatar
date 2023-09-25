
import 'package:get/get.dart';
import 'package:flutter_tugas6/LuasController.dart';


class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LuasController());
  }
}
