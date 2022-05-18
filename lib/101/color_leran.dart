import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: 250,
            color: Theme.of(context).errorColor,
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color(0xffEDBF61);
  static const Color newColor = Color.fromARGB(255, 46, 202, 98);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
