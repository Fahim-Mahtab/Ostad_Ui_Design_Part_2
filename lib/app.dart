import 'package:flutter/material.dart';
import 'package:ostad_ui_design/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ostad Ui Design",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 8, color: Colors.black),
        ),


      ),

      home: HomePage(),

    );
  }
}