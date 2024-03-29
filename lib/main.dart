import 'package:flutter/material.dart';
import 'package:snapchat_clone/view/navbar/navbar.dart';

void main() {
  runApp(Snapchat());
}

class Snapchat extends StatelessWidget {
  const Snapchat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
