import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(color: Colors.white, height: 100, width: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Container(color: Colors.white, height: 100, width: 100),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 50, right: 0, bottom: 50),
              child: Text("Hakan GÜL"),
            ),
            Container(
              padding: ProjectPadding.pagePaddingVertical,
              child: const Text("Hello World"),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 10);
  static const pagePaddingOnlyRight = EdgeInsets.only(right: 20);
  static const pagePaddingOnlyLeft = EdgeInsets.only(left: 30);
}
