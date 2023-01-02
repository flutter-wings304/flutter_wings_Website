import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ViewSaleScreen extends StatefulWidget {
  const ViewSaleScreen({Key? key}) : super(key: key);

  @override
  State<ViewSaleScreen> createState() => _ViewSaleScreenState();
}

class _ViewSaleScreenState extends State<ViewSaleScreen> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Sale")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Text("Today's Sale", style: textStyle2),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: SizedBox(
                      height: 40,
                      child: TextFormField(
                        controller: dateController,
                        readOnly: true,
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2010),
                                  lastDate: DateTime(2050))
                              .then((value) {
                            dateController.text = DateFormat("dd-mm-yyyy")
                                .format(value ?? DateTime.now());
                          });
                        },
                      ))),
              const SizedBox(
                width: 15,
              ),
              button("Search"),
              const SizedBox(
                width: 15,
              ),
              button("Print")
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: size.width * 0.06,
                  mainAxisSpacing: size.width * 0.05,
                  maxCrossAxisExtent: size.width),
              children: [
                Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 12, 18, 30),
                    child: Column(
                      children: [
                        Text("Total Sales", style: textStyle),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "300 \$",
                            style: textStyle2,
                          ),
                        ),
                        Text("Cash 0.00", style: textStyle),
                        divider(),
                        Text("Card (Online) 0.00", style: textStyle),
                        divider(),
                        Text("Card (PDQ) 0.00", style: textStyle),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 12, 18, 30),
                    child: Column(
                      children: [
                        Text("Orders", style: textStyle),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "300 ",
                            style: textStyle2,
                          ),
                        ),
                        Text("Delivery 0.00", style: textStyle),
                        divider(),
                        Text("Collection 0.00", style: textStyle),
                        divider(),
                        Text("Eat-In 0.00", style: textStyle),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget button(String title) {
    return Container(
      color: const Color.fromRGBO(214, 156, 248, 1),
      alignment: Alignment.center,
      height: 40,
      width: 100,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget divider() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Divider(
        color: Colors.white,
      ),
    );
  }

  TextStyle textStyle = const TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
  TextStyle textStyle2 = const TextStyle(
      fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
}
