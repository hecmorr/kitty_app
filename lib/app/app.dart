import 'package:flutter/material.dart';
import 'package:kitty/cats/view/cats_page.dart';

class CatsApp extends StatelessWidget {
  const CatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatsPage(),
    );
  }
}
