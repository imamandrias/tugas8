import 'package:flutter/material.dart';
import 'package:kalkulatorbloc/ui/kalkulator_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Kalkulator Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KalkulatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

