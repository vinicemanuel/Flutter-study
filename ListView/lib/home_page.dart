import 'package:first_app/my_row.dart';
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
          title: const Text("hello meu nobre"), backgroundColor: Colors.amber),
      body: Column(children:[
        IconButton(onPressed: (){
          setState(() {
            counter++;
          });
        }, icon: Icon(Icons.add)),
        Expanded(
          child: ListView.builder(
            itemCount: counter,
            itemBuilder: (context, index) {
              return MyRow(myIndex: index);
            },
          ),
        )
      ]),
    );
  }
}
