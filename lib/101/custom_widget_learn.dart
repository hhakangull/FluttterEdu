import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  title: 'Food',
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
          CustomFoodButton(
            title: 'Food',
            onPressed: () {
              debugPrint("Hello World custom Widget Learn");
            },
          ),
        ],
      ),
    );
  }
}

class _PaddingUtility {
  final normalPadding = const EdgeInsets.all(8.0);
  final normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: redColors,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: whiteColors, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColors = Colors.red;
  final Color whiteColors = Colors.white;
}
