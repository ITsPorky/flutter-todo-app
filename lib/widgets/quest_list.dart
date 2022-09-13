import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_questy/utilities/quest.dart';
import 'package:project_questy/widgets/quest_item.dart';

class QuestList extends StatefulWidget {
  @override
  _QuestListState createState() => _QuestListState();
}

class _QuestListState extends State<QuestList> {
  final TextEditingController _textFieldController = TextEditingController();
  final List<Quest> _tasks = <Quest>[];

  // Build Widget
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: _tasks.map((Quest task) {
          return QuestItem(
            task: task,
            onTaskChanged: _handleTaskChange,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => _displayDialog(),
        tooltip: 'Add Quest',
        child: Icon(Icons.add),
      ),
    );
  }

  // Functions
  Future<void> _displayDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add a new quest'),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: 'Type your new quest'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                Navigator.of(context).pop();
                _addTaskItem(_textFieldController.text);
              },
            ),
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
                _textFieldController.clear();
              },
            ),
          ],
        );
      },
    );
  }

  void _addTaskItem(String name) {
    setState(() {
      _tasks.add(Quest(name: name, checked: false));
    });
    _textFieldController.clear();
  }

  void _handleTaskChange(Quest task) {
    setState(() {
      task.checked = !task.checked;
    });
  }
}
