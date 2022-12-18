import 'package:flutter/material.dart';

class CustomLabel extends StatefulWidget {
  const CustomLabel({Key? key}) : super(key: key);

  @override
  State<CustomLabel> createState() => _CustomLabelState();
}

class _CustomLabelState extends State<CustomLabel> {
  final FocusNode focusNode = FocusNode(); //focusnode  for textfield
  bool isFocus = false; //local variable
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

  final Map<String, bool> _focusUnfocus = {
    "focus_node_1": false,
    "focus_node_2": false,
    "focus_node_3": false,
  };
  @override
  void initState() {
    super.initState();

// Add listener to textfield to change variable value depending upon it has focus or not
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        isFocus = true;
      } else {
        isFocus = false;
      }

      setState(() {});
    });
    addListenerToNode(focusNode1, "focus_node_1");
    addListenerToNode(focusNode2, "focus_node_2");
    addListenerToNode(focusNode3, "focus_node_3");
  }
  // Add listener to textfield to change variable value in map depending upon it has focus or not

  addListenerToNode(FocusNode focusnode, String key) {
    focusnode.addListener(() {
      if (focusnode.hasFocus) {
        _focusUnfocus[key] = true;
      } else {
        _focusUnfocus[key] = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Single Text Field",
              style: TextStyle(color: isFocus ? Colors.blue : Colors.grey),
            ),
            TextFormField(
              focusNode: focusNode,
            ),
            getLabel(
              title: "Multiple Text Field 1",
              key: "focus_node_1",
            ),
            TextFormField(
              focusNode: focusNode1,
            ),
            getLabel(
              title: "Multiple Text Field 2",
              key: "focus_node_2",
            ),
            TextFormField(
              focusNode: focusNode2,
            ),
            getLabel(
              title: "Multiple Text Field 3",
              key: "focus_node_3",
            ),
            TextFormField(
              focusNode: focusNode3,
            ),
          ],
        ),
      ),
    );
  }

  Widget getLabel({required String title, required String key}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title,
          style: TextStyle(
              color: _focusUnfocus[key] ?? false ? Colors.blue : Colors.grey)),
    );
  }
  //Condition to change color depending upon textfield has focus or not in multitextfield

}
