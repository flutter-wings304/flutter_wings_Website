import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListEqualFunction extends StatefulWidget {
  const ListEqualFunction({Key? key}) : super(key: key);

  @override
  State<ListEqualFunction> createState() => _ListEqualFunctionState();
}

class _ListEqualFunctionState extends State<ListEqualFunction> {
  @override
  Widget build(BuildContext context) {
    List myList1 = [1, 2, 3, 4];
    List myList2 = [1, 2, 3, 4];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Function Result ${listEquals(myList1, myList2)}"),
            const SizedBox(
              height: 10,
            ),
            Text("Traditional Result ${myList1 == myList2}")
          ],
        ),
      ),
    );
  }
}
