import 'package:flutter/material.dart';

class BottomSheetPage1 extends StatelessWidget {
  const BottomSheetPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(187, 222, 251, 1),
      body: const Center(
        child: Text(
          "HOME",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
