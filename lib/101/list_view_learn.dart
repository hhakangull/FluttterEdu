import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              "Merhaba",
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
              // textScaleFactor: 0.5,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
                Container(color: Colors.blue, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.deepPurple, width: 100),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          //XXX
          FittedBox(
            child: Text(
              "Merhaba 2",
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
              // textScaleFactor: 0.5,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, width: 100),
                Container(color: Colors.blue, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.black, width: 100),
                Container(color: Colors.yellow, width: 100),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const ListDemo(),
        ],
      ),
    );
  }
}

class ListDemo extends StatefulWidget {
  const ListDemo({Key? key}) : super(key: key);

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  @override
  void initState() {
    super.initState();
    print("Hello I'm here");
  }

  @override
  void dispose() {
    super.dispose();
    print("Exit");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
