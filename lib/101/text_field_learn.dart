import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLines: 1,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              focusNode: f1,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              textInputAction: TextInputAction.next,
              autofocus: true,
              inputFormatters: [TextProjectInputFormatter()._formatter],
              decoration: _InputDecorator().emailInput),
          TextField(
            focusNode: f2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              focusColor: Colors.pink,
              labelText: 'Phone Label',
              hintText: 'Phone',
              border: OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.previous,
            minLines: 2,
            maxLines: 4,
            // style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
      // color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction(
      (oldValue, newValue) => newValue.text == 'a' ? oldValue : newValue);
}

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Padding(
      padding: EdgeInsets.only(left: 10, right: 20),
      child: Icon(Icons.mail),
    ),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
