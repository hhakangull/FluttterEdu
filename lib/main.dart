import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/color_leran.dart';

import '101/text_field_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            progressIndicatorTheme:
                const ProgressIndicatorThemeData(color: Colors.white),
            // errorColor: ColorsItems.newColor,
            appBarTheme: const AppBarTheme(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                systemOverlayStyle: SystemUiOverlayStyle.light),
            cardTheme: CardTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            errorColor: ColorsItems.sulu,
            textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: const TextStyle(color: Colors.black),
              filled: true,
              fillColor: Colors.white,
              iconColor: Colors.red[300],
              border: const OutlineInputBorder(),
              floatingLabelStyle: const TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
        ),
        home: const TextFieldLearn());
  }
}
