import 'package:course_begin/sharedpref/sharedpref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollContain extends StatelessWidget {
  const ScrollContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // width: double.infinity,
            // margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(15),
                  color: Colors.yellow,
                  child: const Center(
                    child: Text(
                      "First Row",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      color: Colors.blue,
                      child: const Text(
                        "1st Box",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(15),
                      color: Colors.grey,
                      child: const Text(
                        "2nd Box",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(15),
                      color: Colors.orange,
                      child: const Text(
                        "3rd Box",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 1000,
                  padding: const EdgeInsets.all(15),
                  color: Colors.yellow,
                  child: const Center(
                    child: Text(
                      "Last Row",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: [
            FloatingActionButton(
              heroTag: "Back_6",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "Forward_6",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SharedPref()));
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
