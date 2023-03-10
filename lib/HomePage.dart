import 'package:flutter/material.dart';
import 'Category.dart';
import 'ColorsPage.dart';
import 'FamilyMembers.dart';
import 'NumberPage.dart';
import 'PhrasesPage.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Toku",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 62,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/owner/github pic.jpg'),
                radius: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Eman Elsayed",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontFamily: "Pacifico",
                ),
              ),
            ),
            Category(
              OnTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return NumberPage();
                }));
              },
              color: Colors.orange,
              Name: 'Number',
            ),
            Category(
              OnTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return FamilyMembers();
                }));
              },
              color: Colors.blue,
              Name: 'Family Members',
            ),
            Category(
              color: Color.fromARGB(255, 195, 46, 206),
              Name: 'Colors',
              OnTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ColorsPage();
                }));
              },
            ),
            Category(
              color: Color.fromARGB(255, 33, 174, 108),
              Name: 'phrases',
              OnTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return PhrasesPage();
                }));
              },
            ),
            Text(' Made with ❤️"'),
          ],
        ),
      ),
    );
  }
}
