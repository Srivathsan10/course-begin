import 'package:flutter/material.dart';

class BottomPage3 extends StatelessWidget {
  const BottomPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(190, 247, 126, 1),
      body: Center(
        child: Text(
          "ADD",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
