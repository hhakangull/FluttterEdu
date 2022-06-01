import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ImageView(imageName: "1.jpg"),
            ImageView(imageName: "2.jpg"),
            ImageView(imageName: "3.jpg"),
          ],
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  const ImageView({Key? key, required this.imageName}) : super(key: key);
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$imageName",
      height: 150,
      width: 150,
      fit: BoxFit.cover,
    );
  }
}
