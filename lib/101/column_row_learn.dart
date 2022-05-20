import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.blue)),
                Expanded(child: Container(color: Colors.pink)),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('a - data'),
                Column(children: [
                  Text('123123'),
                  Text('123123'),
                  Text('123123'),
                ]),
                Text('b - data'),
                Text('c - data'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
