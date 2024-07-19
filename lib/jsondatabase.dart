import "dart:convert";
import "package:course_begin/listdatabase.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class HomePage extends StatefulWidget {
  HomePage({super.key});
  // String greetings = "Welcome.!";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String database = '['
      '{"Age" : 20,"Name": "Ravi" },'
      '{ "Age" : 30,"Name": "Sridhar"},'
      '{ "Age" : 25,"Name": "Shaknar"},'
      '{"Age" : 18,"Name": "Akash"}'
      ']';

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data =
        jsonDecode(database).cast<Map<String, dynamic>>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text(data[index]["Name"]),
              onTap: () {
                showAlert(data[index]["Age"]);
              },
            );
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "Back",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "Forward",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListDatabase()));
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  showAlert(int data) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: const Text("Alert.!"),
            content: Text("This is $data alert"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Ok"),
              ),
            ],
          );
        });
  }
}
