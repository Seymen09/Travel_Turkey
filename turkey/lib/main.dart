import 'package:flutter/material.dart';
import 'package:turkey/HomeScreen.dart';

void main() => runApp(
  MaterialApp(home:MyApp(),));

  class MyApp extends StatelessWidget {
    const MyApp({super.key});
  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: HomeScreen(),
        
      );
    }
  }

