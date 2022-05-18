import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 100,
            child: Text('a' * 250, style: const TextStyle(color: Colors.white)),
          ),
          const SizedBox.shrink(),
          SizedBox.square(dimension: 150, child: Text('bbbb' * 50)),
          Container(
            //color: Colors.red,
            constraints: const BoxConstraints(
              maxWidth: 200,
              minWidth: 100,
              minHeight: 25,
              maxHeight: 120,
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              // color: Colors.blue,
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.black]),
              shape: BoxShape.rectangle,
              boxShadow: const [
                BoxShadow(color: Colors.black, blurRadius: 5),
                BoxShadow(color: Colors.white, blurRadius: 5)
              ],
              border: Border.all(width: 2, color: Colors.greenAccent),
            ),
            child: Text('Hakan GÜL' * 100, maxLines: 2,),
          )
        ],
      ),
    );
  }
}
