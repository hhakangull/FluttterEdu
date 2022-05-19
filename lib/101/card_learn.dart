import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: Column(
        children: const [
          _CustomCardStyle(
              child: SizedBox(
            height: 100,
            width: 300,
            child: Center(
              child: Text(
                "Hakan GÜL",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class _CustomCardStyle extends StatelessWidget {
  const _CustomCardStyle({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}

// Borders
// StadiumBorder - RoundedRectangleBorder - BeveledRectangleBorder
// CircleBorder - UnderlineInputBorder

class ProjectMargins {
  static const CardMargin = EdgeInsets.all(10);
}
