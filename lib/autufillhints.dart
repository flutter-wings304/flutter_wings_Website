import 'package:flutter/material.dart';

class AutoFillHintsScreen extends StatelessWidget {
  const AutoFillHintsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    hintText: "Email Address",
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder()),
                  autofillHints: const [AutofillHints.email],
                  keyboardType: TextInputType.emailAddress)
            ]),
      ),
    );
  }
}
