import 'package:dashboard_ui_app/src/constants/constants.dart';
import 'package:dashboard_ui_app/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundColor,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MainScreen(),
    );
  }
}
