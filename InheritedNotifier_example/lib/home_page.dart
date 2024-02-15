import 'package:first_app/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("hello meu nobre"),
        backgroundColor: Colors.amber
        ),
      body: Center(
      child: Text(
        "hello ${controller?.value ?? 0}}",
        style: TextStyle(
          color: Colors.blue
          ),
          textDirection: TextDirection.rtl,
        )
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
            controller?.increment();
            debugPrint("tapped");
      },
      backgroundColor: Colors.red,
      child: const Icon(Icons.add),
    ),);
  }
}

