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
    return const Scaffold();
  }
}
