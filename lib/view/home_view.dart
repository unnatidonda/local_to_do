import 'package:flutter/material.dart';
import 'package:local_to_do/view/home_second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  SharedPreferences? prefs;

  List<String> dataOne = [""];

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  setData() {
    prefs!.setString('prefV', "123456789");
    prefs!.setBool('base', true);
    prefs!.setDouble('point', 3.0);
    prefs!.setInt('fonts', 5);
    prefs!.setStringList('listText', [
      "unnati",
      "krushika",
    ]);
  }

  @override
  void initState() {
    // TODO: implement initState
    setInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "list value : $dataOne",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                setData();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeSecondScreen(),
                  ),
                );
              },
              child: const Text("Send Data"),
            ),
          ],
        ),
      ),
    );
  }
}
