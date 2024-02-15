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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyRow(),
              for (var index = 0; index < 10; index++) 
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.yellow,
                margin: EdgeInsets.all(20),
                ),
              MyRow(),
            ],),
        )
        )
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.yellow
              ),
              Container(
              width: 80,
              height: 80,
              color: Colors.blue
              ),
              Container(
              width: 80,
              height: 80,
              color: Colors.red
              )
          ],
          );
  }

}
