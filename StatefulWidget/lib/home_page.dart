import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello meu nobre"),
        backgroundColor: Colors.amber
        ),
      body: Center(
      child: Text(
        "hello $counter",
        style: TextStyle(
          color: Colors.blue
          ),
          textDirection: TextDirection.rtl,
        )
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
            debugPrint("tapped");
            setState(() {
              counter++;
            });
      },
      backgroundColor: Colors.red,
      child: const Icon(Icons.add),
    ),
    );
  }
}
