import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);
  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;
  int _counterCustom = 0;

  void incrementValue() => _countValue += 1;

  void deIncrementValue() => _countValue -= 1;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      setState(() {
        _countValue += 1;
      });
    } else {
      setState(() {
        _countValue -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deIncrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const Placeholder(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _counterCustom += 1;
                });
              },
              child: Text('Merhaba $_counterCustom'))
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('Hello World 1 ');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deIncrementButton() {
    print('Hello World 2 ');

    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
