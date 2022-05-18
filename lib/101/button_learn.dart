import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
            onPressed: () {},
            child: const Text('Save', style: ProjectStyles.textStyle),
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text('data', style: ProjectStyles.textStyle)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit)),
          FloatingActionButton(
            child: const Icon(Icons.access_alarms),
            onPressed: () {
              debugPrint('FloatingActionButton debugPrint');
            },
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10)),
              onPressed: () {},
              child: const Icon(Icons.access_time)),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(height: 200, color: Colors.white),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Place Bid',
                  style: Theme.of(context).textTheme.headline2),
            ),
          ),
        ],
      ),
    );
  }
}
// Buttons:
// TextButton, ElevatedButton, IconButton, FloatingActionButton, OutlinedButton

// Borders:
// CircleBorder(), RoundedRectangleBorder()

class ProjectStyles {
  static const TextStyle textStyle = TextStyle(
    fontSize: 36,
    color: Colors.white,
  );
}
