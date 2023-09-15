import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_tugas6/LuasController.dart';

class LuasLingkaran extends StatefulWidget {
  const LuasLingkaran({super.key});

  @override
  State<LuasLingkaran> createState() => _LuasLingkaranState();
}

class _LuasLingkaranState extends State<LuasLingkaran> {

  TextEditingController ctrjari = TextEditingController();
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
        title: Text("Luas Lingkaran"),
      ),
      body: Center(
        child: Container(
          // alas dan tinggi
          child: Column(
            children: [
              // alas
              myTextField(ctrjari, "Jari Jari"),
              ElevatedButton(onPressed: () => controller.luasLingkaran(
                  double.parse(ctrjari.text.toString())),
                  child: Text("calculate")),
              // tempel hasil hitung nya
              Obx(
                    () => Text(
                  '${controller.hasilLuasLingkaran.value}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
