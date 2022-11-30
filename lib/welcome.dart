import 'package:flutter/material.dart';

List myList = ["4.png", "1.png"];

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset("assets/images/${myList[index]}");
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
