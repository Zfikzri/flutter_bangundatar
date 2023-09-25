import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_tugas6/LuasController.dart';

class LuasPersegiPanjang extends StatefulWidget {
  const LuasPersegiPanjang({super.key});

  @override
  State<LuasPersegiPanjang> createState() => _LuasPersegiPanjangState();
}

class _LuasPersegiPanjangState extends State<LuasPersegiPanjang> {


  TextEditingController ctrpanjang = TextEditingController();
  TextEditingController ctrlebar = TextEditingController();
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
        title: Text("Luas Persegi Panjang"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Kembali ke halaman sebelumnya saat tombol "Back" ditekan
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Container(
          // alas dan tinggi
          child: Column(
            children: [
              // alas
              myTextField(ctrpanjang, "Panjang"),
              myTextField(ctrlebar, "Lebar"),
              ElevatedButton(onPressed: () => controller.luasPersegiPanjang(
                  double.parse(ctrpanjang.text.toString()),
                  double.parse(ctrlebar.text.toString())),
                  child: Text("calculate")),
              // tempel hasil hitung nya
              Obx(
                    () => Text(
                  '${controller.hasilLuasPersegiPanjang.value}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
