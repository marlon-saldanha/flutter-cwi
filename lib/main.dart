import 'package:filme_flix/routes/app_router.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: ThemeData(
        textTheme: ThemeData.dark().textTheme.apply(bodyColor: Colors.white),
      ),
    );
  }
}
