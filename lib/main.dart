import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recommend/screens/home.dart';
import 'package:recommend/service/store.dart';
import './styles/theme.dart' as style;
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (c)=>Store(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: style.theme,
      home: Home(),
    );
  }
}
