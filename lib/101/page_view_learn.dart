import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/text_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  final _pageController = PageController(viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                duration: _DurationUtility._durationLow,
                curve: Curves.slowMiddle,
              );
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                duration: _DurationUtility._durationLow,
                curve: Curves.slowMiddle,
              );
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        onPageChanged: _updatePageIndex,
        padEnds: false,
        controller: _pageController,
        children: [
          const ImageLearnView(),
          IconLearnView(),
          TextLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
