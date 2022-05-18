import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: const [
              TitleTextWidget(title: "Ali"),
              TitleTextWidget(title: "Veli"),
              TitleTextWidget(title: "Hakan"),
              CustomContainer(
                text: "Custom Container Text",
                color: Colors.blue,
                radiusCircular: 20,
              )
            ],
          ),
        ));
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, this.color, this.radiusCircular, this.text})
      : super(key: key);
  final Color? color;
  final double? radiusCircular;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radiusCircular ?? 0),
          color: color),
      child: Text(
        text ?? "",
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      style: Theme.of(context)
          .copyWith(
            textTheme: const TextTheme(
              headline1: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
          .textTheme
          .headline4,
    );
  }
}
