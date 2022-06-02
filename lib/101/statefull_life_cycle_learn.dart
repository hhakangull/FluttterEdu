import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;
  //Mesaj tekse yanına tek yoksa çift yaz.
  @override
  void initState() {
    // constructor gibi bir method dur.
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('A');
  }

  @override
  void didChangeDependencies() {
    // initStateden sonrasında çalışır.
    // Sayfanın büyük bir bölümünün değişiklik durumunda kullanılır.
    super.didChangeDependencies();
    print('B');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    //
    super.didUpdateWidget(oldWidget);

    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('Dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(
              onPressed: () {},
              child: Text(_message),
            ),
    );
  }

  void _computeName() {
    _message += _isOdd ? "Çift" : "Tek";
  }
}
