import "package:course_begin/bottombar.dart";
// import "package:course_begin/imageflip.dart";
import "package:flutter/material.dart";

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  TextEditingController control1 = TextEditingController();
  TextEditingController control2 = TextEditingController();
  var sum = "";
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(),
          child: Column(
            children: [
              TextField(
                controller: control1,
                decoration: const InputDecoration(hintText: "Number 1"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: control2,
                decoration: const InputDecoration(hintText: "Number 2"),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  int sum = int.parse(control1.text) + int.parse(control2.text);
                  setState(() {
                    result = sum.toString();
                  });
                },
                child: Text("+"),
              ),
              ElevatedButton(
                onPressed: () {
                  int sum = int.parse(control1.text) - int.parse(control2.text);
                  setState(() {
                    result = sum.toString();
                  });
                },
                child: Text("-"),
              ),
              ElevatedButton(
                onPressed: () {
                  int sum = int.parse(control1.text) * int.parse(control2.text);
                  setState(() {
                    result = sum.toString();
                  });
                },
                child: Text("*"),
              ),
              ElevatedButton(
                onPressed: () {
                  double sum =
                      double.parse(control1.text) / double.parse(control2.text);
                  setState(() {
                    result = sum.toString();
                  });
                },
                child: Text("/"),
              ),
              const SizedBox(
                height: 100,
              ),
              Text("Output: $result"),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            FloatingActionButton(
              heroTag: "Back_3",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "Forward_3",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BottomB()));
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
