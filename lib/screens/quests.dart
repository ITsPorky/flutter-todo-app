import 'package:flutter/material.dart';
import 'package:project_questy/widgets/quest_list.dart';

class QuestsPage extends StatefulWidget {
  const QuestsPage({super.key, required this.title});

  final String title;

  @override
  State<QuestsPage> createState() => _QuestsPageState();
}

class _QuestsPageState extends State<QuestsPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: Text(widget.title),
      ),
      body: QuestList(),
    );
  }
}
