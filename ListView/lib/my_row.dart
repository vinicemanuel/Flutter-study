import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  final int myIndex;
  const MyRow({super.key, required this.myIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            "https://miro.medium.com/v2/resize:fit:405/1*J9_05FyiiDk2y2hhbOwNlg.png",
            fit: BoxFit.cover,
            height: 80,
            width: 80,
            ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(width: 80, height: 80, color: Colors.blue.withOpacity(0.6)),
              Text("$myIndex")
            ],
          ),
          Image.asset(
            "resources/cat-meme.jpeg",
            fit: BoxFit.cover,
            height: 80,
            width: 80,
            )
        ],
      ),
    );
  }
}