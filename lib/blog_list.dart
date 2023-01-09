import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final List blogList = [
  {
    "title": "Autofill Hints Suggestion List in Flutter",
    "url":
        "https://www.geeksforgeeks.org/autofill-hints-suggestion-list-in-flutter/",
    "platform": "geeksforgeeks"
  }
];

class BlogListScreen extends StatefulWidget {
  const BlogListScreen({Key? key}) : super(key: key);

  @override
  State<BlogListScreen> createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: blogList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              launchUrl(Uri.parse(blogList[index]["url"]));
            },
            child: Card(
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(blogList[index]["title"]),
                subtitle: Text(blogList[index]["platform"]),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [mediaLink()],
            ),
            const Text(
              'Copyright ©2022, All Rights Reserved.',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Color(0xFF162A49)),
            ),
          ],
        ),
      ),
    );
  }

  mediaLink() {
    return Container(
      decoration: BoxDecoration(border: Border.all(), shape: BoxShape.circle),
      padding: const EdgeInsets.all(8),
      child: const Icon(FontAwesomeIcons.instagram),
    );
  }
}
