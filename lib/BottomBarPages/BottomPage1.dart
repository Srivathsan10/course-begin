import 'package:flutter/material.dart';

class BottomPage1 extends StatelessWidget {
  const BottomPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(187, 222, 251, 1),
      body: Center(
        child: Text(
          "HOME",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
