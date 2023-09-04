import 'package:flutter/material.dart';
import 'package:local_to_do/view/home_second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Obtain shared preferences.
  SharedPreferences? prefs;

  String sValue = "";

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  setData() {
    prefs!.setString('s_value', "123456789");
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
              "String value : $sValue",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeSecondScreen(),
                  ),
                );
              },
              child: const Text("Send Data"),
              // setData,
              //   onLongPress: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const HomeSecondScreen(),
              //       ),
              //     );
              //   },
              //   child: const Text("Send Data"),
              // ),
              // const SizedBox(height: 15),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const HomeSecondScreen(),
              //       ),
              //     );
              //   },
              //   child: const Text("Send Data"),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
