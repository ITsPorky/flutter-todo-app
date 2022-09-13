import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Questy',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'Helvetica',
      ),
      home: const MainScreen(title: 'Project Questy'),
    );
  }
}
