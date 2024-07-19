import 'package:flutter/material.dart';

class BottomSheetPage3 extends StatelessWidget {
  const BottomSheetPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(190, 247, 126, 1),
      body: const Center(
        child: Text(
          "SEARCH",
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
