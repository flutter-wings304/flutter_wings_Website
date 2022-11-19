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
    List myList3 = [1, 2, 3, 4, 5, 6];

    return Scaffold(
      appBar: AppBar(title: Text("List Equals")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("List 1 $myList1"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("List 2 $myList2"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("List 3 $myList3"),
            ),
            Text(
                "Function Result for list 1 and list 2 ${listEquals(myList1, myList2)}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Function Result for list 1 and list 3 ${listEquals(myList1, myList2)}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Traditional Result  for list 1 and list 2 ${myList1 == myList2}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Traditional Result  for list 1 and list 3 ${myList1 == myList3}")
          ],
        ),
      ),
    );
  }
}
