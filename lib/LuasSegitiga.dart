import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_tugas6/LuasController.dart';

class LuasSegitiga extends StatefulWidget {
  const LuasSegitiga({Key? key}) : super(key: key);

  @override
  State<LuasSegitiga> createState() => _LuasSegitigaState();
}

class _LuasSegitigaState extends State<LuasSegitiga> {

  TextEditingController ctrAlas = TextEditingController();
  TextEditingController ctrTinggi = TextEditingController();
  final LuasController controller = Get.put(LuasController());


  Widget myTextField(TextEditingController ctr, String myLabel){
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: ctr,
        decoration: InputDecoration(
          label: Text(myLabel),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("luas Segitiga"),
      ),
      body: Center(
        child: Container(
          // alas dan tinggi
          child: Column(
            children: [
              // alas
              myTextField(ctrAlas, "alas"),
              myTextField(ctrTinggi , "tinggi"),
              ElevatedButton(onPressed: () => controller.luasSegitiga(
                  double.parse(ctrAlas.text.toString()),
                  double.parse(ctrTinggi.text.toString())),
                  child: Text("calculate")),
              // tempel hasil hitung nya
              Obx(
                    () => Text(
                  '${controller.hasilLuasSegitiga.value}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
