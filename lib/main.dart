import 'package:flutter/material.dart';
import 'package:flutter_tugas6/binding.dart';
import 'package:flutter_tugas6/splash.dart';
import 'package:get/get.dart';
import 'package:flutter_tugas6/home.dart';
import 'package:flutter_tugas6/LuasSegitiga.dart';
import 'package:flutter_tugas6/LuasPersegi.dart';
import 'package:flutter_tugas6/LuasPersegiPanjang.dart';
import 'package:flutter_tugas6/LuasLingkaran.dart';
import 'package:flutter_tugas6/luasJajarGenjang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      initialRoute: '/', // Atur rute awal
      getPages: [
        GetPage(name: '/home', page: () => HomePage()), // Rute untuk HomePage
        GetPage(name: '/luasSegitiga', page: () => LuasSegitiga()), // Rute untuk LuasSegitiga
        GetPage(name: '/luasPersegi', page: () => LuasPersegi()), // Rute untuk LuasPersegi
        GetPage(name: '/luasPersegiPanjang', page: () => LuasPersegiPanjang()), // Rute untuk LuasPersegiPanjang
        GetPage(name: '/luasLingkaran', page: () => LuasLingkaran()), // Rute untuk LuasLingkaran
        GetPage(name: '/luasJajarGenjang', page: () => luasJajarGenjang()), // Rute untuk luasJajarGenjang
      ],
      home: Splash(),
    );
  }
}
