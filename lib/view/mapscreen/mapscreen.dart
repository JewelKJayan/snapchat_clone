import 'package:flutter/material.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({super.key});

  @override
  State<Mapscreen> createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/snapmap.png",
                    fit: BoxFit.cover,
                  ))),
        ),
      ),
    );
  }
}
