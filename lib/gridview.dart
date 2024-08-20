import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  Future fetchphotos() async {
    final apipics = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    if (apipics.statusCode == 200) {
      return jsonDecode(apipics.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetchphotos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error ${snapshot.error}');
            } else {
              return GridView.builder(
                  itemCount: 31,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        color: Colors.blue,
                        child: Image.network(snapshot.data[index]['url']),
                      ),
                    );
                  });
            }
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "Back_10",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "Forward_10",
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => Gridview()));
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
