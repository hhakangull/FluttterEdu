import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Samples'),
      ),
      body: const Text('Merhaba'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FloatingActionButton pressed Hakan GÜL');        
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      drawer: const Drawer(),
      bottomSheet: BottomSheet(
        builder: (context) => const Text('Bottom Sheet'),
        onClosing: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'A'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'B'),
        ],
      ),
    );
  }
}
