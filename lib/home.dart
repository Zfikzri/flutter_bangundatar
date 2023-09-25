import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Bangun Datar'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pilih Bangun Datar:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BangunRuangCard(
                  title: 'Segitiga',
                  icon: Icons.change_history,
                  destinationPage: () => '/luasSegitiga',
                ),
                SizedBox(width: 40),
                BangunRuangCard(
                  title: 'Persegi',
                  icon: Icons.square,
                  destinationPage: () => '/luasPersegi',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BangunRuangCard(
                  title: 'Persegi Panjang',
                  icon: Icons.rectangle,
                  destinationPage: () => '/luasPersegiPanjang',
                ),
                SizedBox(width: 40),
                BangunRuangCard(
                  title: 'Jajar Genjang',
                  icon: Icons.crop_din,
                  destinationPage: () => '/luasJajarGenjang',
                ),
              ],
            ),
            SizedBox(height: 20),
            BangunRuangCard(
              title: 'Lingkaran',
              icon: Icons.lens,
              destinationPage: () => '/luasLingkaran',
            ),
          ],
        ),
      ),
    );
  }
}

class BangunRuangCard extends StatelessWidget {
  final String title;
  final Function() destinationPage;
  final IconData icon;

  BangunRuangCard({
    required this.title,
    required this.destinationPage,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(destinationPage());
        },
        child: Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 40, color: Colors.black),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
