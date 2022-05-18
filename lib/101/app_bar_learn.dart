import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);

  final String _title = 'Welcome to Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        // centerTitle: true,
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        leadingWidth: 23,
        // iconTheme: const IconThemeData(color: Colors.red),
        // toolbarTextStyle: const TextStyle(color: Colors.red),
        // automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail),
          ),
          const Center(child: CircularProgressIndicator()),
          // Text(_title)
        ],
      ),
      body: Column(),
    );
  }
}
