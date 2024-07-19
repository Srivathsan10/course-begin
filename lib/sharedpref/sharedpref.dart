import "package:course_begin/sharedpref/homepage_sp.dart";
import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();

  late bool newuser;
  @override
  void initState() {
    isAlreadyLogged();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.account_circle_rounded,
                  color: Colors.blue, size: 100),
            ),
            TextField(
              controller: emailControl,
              decoration: InputDecoration(
                  label: const Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passControl,
              decoration: InputDecoration(
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () async {
                String username = emailControl.text;
                String password = passControl.text.toString();
                SharedPreferences prefs = await SharedPreferences.getInstance();
                setState(() {
                  prefs.setBool("user", false);
                  prefs.setString("username", username);
                  if (username != '' && password != '') {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => const HomePageSP()));
                  }
                });
              },
              color: Colors.blue,
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }

  isAlreadyLogged() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    newuser = prefs.getBool("user") ?? true;
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const HomePageSP()));
    }
  }
}
