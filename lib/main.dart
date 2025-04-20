import 'package:filme_flix/pages/home_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/sign-in': (context) => SignInScreen(),
      },
      theme: ThemeData(
        textTheme: ThemeData.dark().textTheme.apply(bodyColor: Colors.white),
      ),
    );
  }
}
