import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);
  // burası değişmez sabit kalır
  // burası dışarı ile haberleştiğimiz yer.
  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  //State kısmı ise burada değişim yapar.
  //logicler burada yazılıyor.
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
