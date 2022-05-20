import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final ImageUrl = 'https://picsum.photos/250?image=9';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: Image.network(ImageUrl, fit: BoxFit.cover),
            subtitle: const Text('How do you use your card?'),
            leading: const Icon(Icons.money),
            trailing: IconButton(
                onPressed: () => debugPrint('Text'),
                icon: const Icon(Icons.more_vert)),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
