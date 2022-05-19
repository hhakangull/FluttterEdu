import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final String _title = 'Create your first note';
  final String _description =
      'A note is a piece of writing that is a personal reflection on a topic.';
  final String _createNote = 'Create a Note';
  final String _importNote = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            const PngImage(imageName: 'apple'),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(text: _description),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtonHeights.buttonNormalHeight,
                child: Center(
                  child: Text(
                    _createNote,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                _importNote,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.text})
      : super(key: key);
  final TextAlign textAlign;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text * 2,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class PngImage extends StatelessWidget {
  final String imageName;

  const PngImage({super.key, required this.imageName});
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/images/$imageName.png';
}
