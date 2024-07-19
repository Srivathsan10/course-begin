import 'package:course_begin/BottomBarPages/BottomPage1.dart';
import 'package:course_begin/BottomBarPages/BottomPage2.dart';
import 'package:course_begin/BottomBarPages/BottomPage3.dart';
import 'package:course_begin/scrollview.dart';
import 'package:flutter/material.dart';

class BottomB extends StatefulWidget {
  const BottomB({super.key});

  @override
  State<BottomB> createState() => _BottomBState();
}

class _BottomBState extends State<BottomB> {
  int _selectedIndex = 0;
  final _pages = [
    const Center(
      child: Text(
        "HOME",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      ),
    ),
    const Center(
      child: Text(
        "SEARCH",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      ),
    ),
    const Center(
      child: Text(
        "ADD",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("HDh"), accountEmail: Text("GDGD")),
            ListTile(
              leading: const Icon(Icons.menu),
              title: const Text("Menu"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomPage1()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text("Search"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomPage2()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("Add"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomPage3()));
              },
            ),
          ],
        ),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add")
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            FloatingActionButton(
              heroTag: "Back_5",
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              heroTag: "Forward_5",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScrollContain()));
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
