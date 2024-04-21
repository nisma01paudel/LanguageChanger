import 'package:flutter/material.dart';
import 'package:newproject/storagehelper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> languages = ["English", "Nepali", "Hindi"];
  String currentLanguage = "English";
  String key = "lang";
  // @override
  // void initState() {
  //   currentLanguage = SharedPreferencesHelper.getLanguage(key) ?? languages[0];
  //   super.initState();
  // }

  void changeLanguage(String language) {
    SharedPreferencesHelper.setLanguage(key, language);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome to language changer app!"),
        ),
        body: Column(
          children: [
            DropdownButton<String>(
              value: currentLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  currentLanguage = newValue!;
                });
                // changeLanguage(newValue!);
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
          ],
        ));
  }
}
