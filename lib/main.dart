import 'package:flutter/material.dart';
import 'package:job_jungle/Const/Themedata.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   theme: myTheme ,
      home: Scaffold(
        body: Center(
          child: Text('Hello World!Huzaifa-Tawab'),
        ),
      ),
    );
  }
}
