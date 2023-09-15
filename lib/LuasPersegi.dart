import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_tugas6/LuasController.dart';


class LuasPersegi extends StatefulWidget {
  const LuasPersegi({super.key});

  @override
  State<LuasPersegi> createState() => _LuasPersegiState();
}

class _LuasPersegiState extends State<LuasPersegi> {

  TextEditingController ctrsisi = TextEditingController();
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
        title: Text("Luas Persegi"),
      ),
      body: Center(
        child: Container(
          // alas dan tinggi
          child: Column(
            children: [
              // alas
              myTextField(ctrsisi, "Sisi"),
              ElevatedButton(onPressed: () => controller.luasPersegi(
                  double.parse(ctrsisi.text.toString())),
                  child: Text("calculate")),
              // tempel hasil hitung nya
              Obx(
                    () => Text(
                  '${controller.hasilLuasPersegi.value}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
