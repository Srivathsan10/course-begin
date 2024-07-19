import "package:course_begin/BottomSheetPages/BottomSheetPage1.dart";
import "package:course_begin/BottomSheetPages/BottomSheetPage2.dart";
import "package:course_begin/BottomSheetPages/BottomSheetPage3.dart";
import "package:course_begin/toggleapi.dart";
import "package:flutter/material.dart";

class BottomModelSheet extends StatelessWidget {
  BottomModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.home),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomSheetPage1()));
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomSheetPage2()));
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.settings),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomSheetPage3()));
                            },
                          )
                        ],
                      ),
                    );
                  });
            },
            child: const Text("Bottom Sheet")),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: [
            FloatingActionButton(
              heroTag: "Back_8",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "Forward_8",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ToggleApi()));
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
