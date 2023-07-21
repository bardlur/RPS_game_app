import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(gameApplication());
}

class gameApplication extends StatefulWidget {
  const gameApplication({super.key});

  @override
  State<gameApplication> createState() => _gameApplicationState();
}

class _gameApplicationState extends State<gameApplication> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(52, 73, 110, 100),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(13, 24, 35, 100),
          title: Text('سنگ  کاغذ  قیچی'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,  
              children: [
                Image(
                  image: AssetImage(
                    'images/$top.png',
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    side: BorderSide(color: Colors.white, width: 2),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      top = Random().nextInt(3) + 1;
                      bottom = Random().nextInt(3) + 1;
                    });
                  }, 
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Image(
                  image: AssetImage(
                    'images/$bottom.png',
                  ),
                ),
              ],
            ),
          ), 
        ),
      ),
    );
  }
}
