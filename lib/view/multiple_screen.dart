import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MultipleScreen extends StatefulWidget {
  const MultipleScreen({super.key});

  @override
  State<MultipleScreen> createState() => _MultipleScreenState();
}

class _MultipleScreenState extends State<MultipleScreen> {
  // Obtain shared preferences.
  SharedPreferences? prefs;

  String sValue = "";
  Int sInt = ("",) as Int;
  Bool sBool = ("",) as Bool;
  Double sDouble = ("",) as Double;
  // StringList sStringList = ('', <String>['', '', '']) as DomStringList;

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  setData() {
    prefs!.setString('s_value', "123456789");
    prefs!.setInt('counter', 10);
    prefs!.setBool('repeat', true);
    prefs!.setDouble('decimal', 1.5);
    prefs!.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
  }

  getData() {
    sValue = prefs!.getString('s_value')!;
    sInt = prefs!.getInt('sInt')! as Int;
    sBool = prefs!.getInt('sBool')! as Bool;
    sDouble = prefs!.getInt('sDouble')! as Double;
    // sStringList = prefs!.getInt('sStringList')! as DomStringList;

    setState(() {});
  }

  @override
  Future<void> initState() async {
    // TODO: implement initState
    setInstance();
    // await prefs?.remove('counter');
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
            // Text(
            //   "String value : $sValue",
            //   style: const TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: setData,
              child: const Text("Send Data"),
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
