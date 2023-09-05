import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSecondScreen extends StatefulWidget {
  const HomeSecondScreen({super.key});

  @override
  State<HomeSecondScreen> createState() => _HomeSecondScreenState();
}

class _HomeSecondScreenState extends State<HomeSecondScreen> {
  SharedPreferences? prefs;

  String sPValue = "";
  bool? bValue;
  int? iValue;
  double? dValue;
  List<String> dataOne = [""];

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  getData() {
    sPValue = prefs!.getString('prefV')!;
    bValue = prefs!.getBool('base')!;
    dValue = prefs!.getDouble('point')!;
    iValue = prefs!.getInt('fonts')!;
    dataOne = prefs!.getStringList('listText')!;
    setState(() {});
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
              onPressed: getData,
              child: const Text("Get Data"),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
