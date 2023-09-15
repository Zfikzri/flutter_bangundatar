import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_tugas6/LuasController.dart';

class luasJajarGenjang extends StatefulWidget {
  const luasJajarGenjang({super.key});

  @override
  State<luasJajarGenjang> createState() => _luasJajarGenjangState();
}

class _luasJajarGenjangState extends State<luasJajarGenjang> {

  TextEditingController ctralas = TextEditingController();
  TextEditingController ctrtinggi = TextEditingController();
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
        title: Text("Luas Jajar Genjang"),
      ),
      body: Center(
        child: Container(
          // alas dan tinggi
          child: Column(
            children: [
              // alas
              myTextField(ctralas, "Alas"),
              myTextField(ctrtinggi, "Tinggi"),
              ElevatedButton(onPressed: () => controller.luasJajarGenjang(
                  double.parse(ctralas.text.toString()),
                  double.parse(ctrtinggi.text.toString())),
                  child: Text("calculate")),
              // tempel hasil hitung nya
              Obx(
                    () => Text(
                  '${controller.hasilLuasJajarGenjang.value}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}