import 'package:flutter/material.dart';
import 'package:olx_app/screens/home_page.dart';

void main(List<String> args) {
  runApp(const MainRunner());
}

class MainRunner extends StatelessWidget {
  const MainRunner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
