import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes(); // Initialize the icon size.
  final IconColors iconColor = IconColors(); // Initialize the icon color.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.accessible_outlined,
            color: iconColor.portage,
            size: iconSize.iconSmall,
          ),
          Icon(
            Icons.accessible_outlined,
            color: iconColor.froly,
            size: iconSize.iconMedium,
          ),
          
          Icon(
            Icons.accessible_outlined,
            color: iconColor.froly,
            size: IconSizes.iconSmall2x,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
  final double iconMedium = 60;
  final double iconBig = 100;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
  final Color portage = const Color(0xffB590F4);
}
