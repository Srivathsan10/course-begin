// USING DOUBLE API RESPONSE

import 'package:course_begin/imagepicker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ToggleApi extends StatefulWidget {
  const ToggleApi({super.key});

  @override
  State<ToggleApi> createState() => _ToggleApiState();
}

class _ToggleApiState extends State<ToggleApi> {
  bool showNextValues = true;

  Future fetchedComments() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));

    if (response.statusCode == 200) {
      return json.decode(response.body).sublist(0, 20);
    } else {
      throw Exception("Failed to load");
    }
  }

  Future fetchedPosts() async {
    final response2 =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response2.statusCode == 200) {
      return json.decode(response2.body).sublist(0, 20);
    } else {
      throw Exception("Failed to load");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: FutureBuilder(
                  future: showNextValues ? fetchedComments() : fetchedPosts(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      final entries = snapshot.data;
                      return ListView.builder(
                        padding: const EdgeInsets.only(bottom: 80),
                        itemCount: entries.length,
                        itemBuilder: (context, index) {
                          final entry = entries[index];
                          return ListTile(
                            title: Text(entry["email"] ?? entry["title"]),
                            subtitle: Text(entry["name"] ?? entry["body"]),
                          );
                        },
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "Back_9",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    showNextValues = !showNextValues; // Toggle the display mode
                  });
                },
                child: const Text("Switch")),
            FloatingActionButton(
              heroTag: "Forward_9",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => imgpicker()));
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

///////////////////////////////////////////////////////////////////////////////////////////
// USING SINGLE API RESPONSE
/*
import 'package:course_begin/imagepicker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ToggleApi extends StatefulWidget {
  const ToggleApi({super.key});

  @override
  State<ToggleApi> createState() => _ToggleApiState();
}

class _ToggleApiState extends State<ToggleApi> {
  bool showNextValues = false;

  Future fetchedData() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));

final response2 = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));        

    if (response.statusCode == 200) {
      final fivevalue = json.decode(response.body);

      
      return fivevalue.sublist(
          showNextValues ? 5 : 0, showNextValues ? 20 : 15);
    } else {
      throw Exception("Failed to load");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: FutureBuilder(
                  future: fetchedData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      final entries = snapshot.data;
                      return ListView.builder(
                        padding: const EdgeInsets.only(bottom: 80),
                        shrinkWrap: true,
                        itemCount: entries.length,
                        itemBuilder: (context, index) {
                          // final entry = entries[index];
                          return ListTile(
                            title: Text(entries[index]["email"]),
                            subtitle: Text(entries[index]["name"]),
                          );
                        },
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "Back_9",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    showNextValues = !showNextValues; // Toggle the display mode
                  });
                },
                child: const Text("Switch")),
            FloatingActionButton(
              heroTag: "Forward_9",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => imgpicker()));
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
*/
