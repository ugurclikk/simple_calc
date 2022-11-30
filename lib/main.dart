import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calc/model.dart/statemanagement.dart';
import 'homescreen.dart';
import 'model.dart/numbercard.dart';
import 'model.dart/symbolbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (context) => Addnumber(), child: HomeScreen()),
    );
  }
}
