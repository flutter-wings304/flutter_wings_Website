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
    List myList5 = ["geeksforgeeks", "flutterwings", "flutter", "dart"];
    List myList6 = ["geeksforgeeks", "flutterwings", "flutter", "dart"];
    List myList7 = [
      "geeksforgeeks",
      "flutterwings",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("List Equals")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("List 5 $myList5"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("List 6 $myList6"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("List 7 $myList7"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Case 1 Compare two equal list with each other",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Text(
                "Function Result for list 1 and list 2 ${listEquals(myList1, myList2)}"),
            const SizedBox(
              height: 10,
            ),
             Text(
                "Traditional Result  for list 1 and list 2 ${myList1 == myList2}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Function Result for list 5 and list 6 ${listEquals(myList5, myList6)}"),
            const SizedBox(
              height: 10,
            ),
             Text(
                "Traditional Result  for list 5 and list 6 ${myList5 == myList6}"),
            const SizedBox(
              height: 10,
            ),
              
             const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Case 2 Compare two unequal list with each other",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
                "Function Result for list 1 and list 3 ${listEquals(myList1, myList3)}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Traditional Result  for list 1 and list 3 ${myList1 == myList3}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Function Result for list 5 and list 7 ${listEquals(myList5, myList7)}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Traditional Result  for list 5 and list 7 ${myList5 == myList7}"),
           
           
                const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Case 3 Compare 1 list with each other",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
             Text(
                "Function Result for list 1 ${listEquals(myList1, myList1)}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Traditional Result  for list 1 ${myList1 == myList1}"),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Function Result for list 5 ${listEquals(myList5, myList5)}"),
            const SizedBox(
              height: 10,
            ),
           
            Text("Traditional Result  for list 5 ${myList5== myList5}"),
            ],
        ),
      ),
    );
  }
}
