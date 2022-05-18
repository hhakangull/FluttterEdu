import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  TextLearn({Key? key, this.userName}) : super(key: key);
  final String name = 'hakan';
  final String? userName ;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name - ${name.length}',
              maxLines: 2,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Welcome $name - ${name.length}',
              maxLines: 2,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white),
            ),
            Text(userName ?? ''),
            Text(keys.welcome),
            
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    letterSpacing: 2,
    color: Colors.red,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    wordSpacing: 2.0,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    decorationColor: Colors.white,
  );
}

class ProjectKeys {
  String welcome = 'welcome';
}
