import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Bugün Ne Yiyeceğiz",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: YemekSayfasi()),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  void yemekYenile() {
    setState(
      () {
        corbaNo = Random().nextInt(5) + 1;
        tatliNo = Random().nextInt(5) + 1;
        yemekNo = Random().nextInt(5) + 1;
      },
    );
  }

  List<String> corbaAdi = [
    'Mercimek',
    'Tarhana',
    'Tavuk',
    'Düğün ',
    'Yogurt '
  ];
  List <String> yemekAdi = ['İmam Bayildı','Mantı','Kuru Fasültye','İçli Köfte','Balık Izgara'];
  List <String> tatliAdi = ['Kadayif','Baklava','Sütlaç','Kazan Dibi','Dondurma'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: yemekYenile,
                child: Image.asset('image/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            '${corbaAdi[corbaNo-1]} Çorbası',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: yemekYenile,
                child: Image.asset("image/yemek_$yemekNo.jpg"),
              ),
            ),
          ),
          Text(
            '${yemekAdi[yemekNo-1]}',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: yemekYenile,
                child: Image.asset("image/tatli_$tatliNo.jpg"),
              ),
            ),
          ),
          Text(
            '${tatliAdi[tatliNo-1]}',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
