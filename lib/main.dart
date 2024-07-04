import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:job_jungle/Config/firebase_options.dart';
import 'package:job_jungle/Const/Themedata.dart';
import 'package:job_jungle/Screens/Common/SplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home:
          // Scaffold(
          //   body: Column(
          //     children: [
          //       Text('data work  with me for to do work',
          //           style: Theme.of(context).textTheme.titleLarge),

          //     ],
          //   ),
          // ),
          SplashScreen(),
    );
  }
}
