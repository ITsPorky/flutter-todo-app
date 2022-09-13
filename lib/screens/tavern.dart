import 'package:flutter/material.dart';

class TavernPage extends StatefulWidget {
  const TavernPage({Key? key}) : super(key: key);

  @override
  State<TavernPage> createState() => _TavernPageState();
}

class _TavernPageState extends State<TavernPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "This is Tavern Screen",
            style: TextStyle(fontSize: 24),
          ),
        )
      ],
    );
  }
}
