import 'package:filme_flix/pages/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        textTheme: ThemeData.dark().textTheme.apply(bodyColor: Colors.white),
      ),
      // home: HomeScreen(),
      home: SignInScreen(),
    );
  }
}
