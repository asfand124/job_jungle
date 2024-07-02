import 'package:flutter/material.dart';
import 'package:job_jungle/Const/Themedata.dart';
import 'package:job_jungle/Screens/Common/SplashScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: myTheme, debugShowCheckedModeBanner: false,home: SplashScreen());
  }
}
