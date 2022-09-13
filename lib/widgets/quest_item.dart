import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_questy/utilities/quest.dart';

class QuestItem extends StatelessWidget {
  QuestItem({
    required this.task,
    required this.onTaskChanged,
  }) : super(key: ObjectKey(task));

  final Quest task;
  final onTaskChanged;

  // Build Widget
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        onTap: () {
          onTaskChanged(task);
        },
        leading: CircleAvatar(
          child: Text(task.name[0]),
        ),
        trailing: _getLeadingIcon(task.checked),
        title: Text(task.name, style: _getTextStyle(task.checked)),
      ),
    );
  }

  // Functions
  TextStyle? _getTextStyle(bool checked) {
    if (!checked) return null;

    return TextStyle(
      decoration: TextDecoration.lineThrough,
    );
  }

  Icon _getLeadingIcon(bool checked) {
    return checked
        ? Icon(Icons.check, color: Colors.greenAccent)
        : Icon(Icons.circle_outlined);
  }
}
