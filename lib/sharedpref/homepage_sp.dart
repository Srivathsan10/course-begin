import "package:course_begin/bottomsheet.dart";
import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";

class HomePageSP extends StatefulWidget {
  const HomePageSP({super.key});

  @override
  State<HomePageSP> createState() => _HomePageSPState();
}

class _HomePageSPState extends State<HomePageSP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 214, 245),
      // appBar: AppBar(
      //   title: const Text("Shared Pref Demo"),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.home_filled,
              color: Colors.blue,
              size: 250,
            ),
            IconButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var newuser = prefs.getBool("user") ?? false;
                setState(() {
                  if (newuser == false) {
                    Navigator.pop(context);
                  }
                  prefs.remove("user");
                  prefs.remove("username");
                });
              },
              icon: const Icon(Icons.exit_to_app_rounded),
              color: Colors.red,
              iconSize: 70,
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: [
            FloatingActionButton(
              heroTag: "Back_7",
              onPressed: () {},
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "Forward_7",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomModelSheet()));
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
