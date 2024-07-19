import 'package:flutter/material.dart';

class BottomSheetPage2 extends StatelessWidget {
  const BottomSheetPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 158, 186, 1),
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
