import "package:course_begin/tile.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class ListDatabase extends StatefulWidget {
  ListDatabase({super.key});

  @override
  State<ListDatabase> createState() => _ListDatabase();
}

class _ListDatabase extends State<ListDatabase> {
  late VoidCallback onpress;
  String buttonName = "";
  List<String> items = [
    "Person 1",
    "Person 2",
    "Person 3",
    "Person 4",
    "Person 5",
    "Person 6"
  ];
  TextEditingController addname = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text(items[index]),
              onTap: () {
                showAlert(items[index]);
              },
            );
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "Back_2",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "AddName",
              onPressed: addName,
              backgroundColor: Colors.lightBlue,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: "Forward_2",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Tile()));
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  showAlert(String items) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: Text(items),
            content: Text("This is $items alert"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Ok"),
              ),
            ],
          );
        });
  }

  addName() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Add your contact",
              style: TextStyle(fontSize: 18),
            ),
            content: Container(
              height: 120,
              child: Column(
                children: [
                  TextField(
                    controller: addname,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Name..",
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      button("Save", () {
                        String newnames = addname.text;
                        setState(() {
                          if (newnames.isNotEmpty) {
                            items.add(newnames);
                            addname.clear();
                          }
                        });
                        Navigator.pop(context);
                      }),
                      const SizedBox(width: 8),
                      button("Cancel", () {
                        Navigator.pop(context);
                      }),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  button(buttonName, onpress) {
    return ElevatedButton(
      onPressed: onpress,
      child: Text(
        buttonName,
        style: const TextStyle(color: Colors.black87),
      ),
    );
  }
}
