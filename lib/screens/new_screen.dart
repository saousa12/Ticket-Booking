import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testflutter/utils/app_styles.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  String message = "";

  String test = "test";

  @override
  void initState() {
    super.initState();
    _loadData();
    test = message;
    print(message);
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      message = prefs.getString('my_key') ?? '';
    });
  }

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('my_key', "helloworld");
    setState(() {
      message = "helloworld";
    });
  }

  Future<void> _deleteData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('my_key');
    setState(() {
      message = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _saveData();
                    },
                    child: const Text('save')),
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      _deleteData();
                    },
                    child: const Text('delete')),
              ],
            ),
            SizedBox(width: 20),
            Text(
              message == null ? "" : message,
              style: Styles.headLineStyle2,
            ),
          ],
        )));
  }
}
