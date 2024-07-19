import 'package:flutter/material.dart';

class BottomPage2 extends StatelessWidget {
  const BottomPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(243, 158, 186, 1),
      body: Center(
        child: Text(
          "SEARCH",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
