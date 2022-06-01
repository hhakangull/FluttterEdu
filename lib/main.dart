import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/statefull_life_cycle_learn.dart';

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
          //systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
        home: const StatefullLifeCycleLearn(
          message: "HakanG",
        )
    );
  }
}
