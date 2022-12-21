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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Example 1"),
              ),
              // Example 1 Suggestion for emails logged in or used from your device
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Email Address",
                    hintText: "Email Address",
                  ),
                autofillHints: const [
                AutofillHints.email,
              ], keyboardType: TextInputType.emailAddress),

// Example 2  Suggestion for names used in your device
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Example 2"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                ),
                autofillHints: const [
                  AutofillHints.name,
                ],
              ),

// Example 3  Suggestion list with different types of text used in your device
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Example 3"),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
               decoration: const InputDecoration(
                  labelText: "Email /Name /Address",
                  hintText: "Email /Name /Address",
                ),

                autofillHints: const [
                  AutofillHints.name,
                  AutofillHints.email,
                  AutofillHints.addressCityAndState,
                ],
              ),

              // Example 4  Custom Suggestion list
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Example 4"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Custom List",
                  hintText: "Custom List",
                ),
                keyboardType: TextInputType.url,
                autofillHints: const ["flutter_wings", "geeksforgeeks"],
              )
            ]),
      ),
    );
  }
}
