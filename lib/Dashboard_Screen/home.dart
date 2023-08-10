import 'package:AryaWear/Navbar/GlobalNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        pageTitle: "Home",
      ),
      drawer: Drawer(
        // Add your drawer content here, e.g., menu items
        child: ListView(
          children: [
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle the onTap action for Item 1
                // For example, you can navigate to a new page
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle the onTap action for Item 2
                // For example, you can navigate to a new page
              },
            ),
            // Add more ListTiles for other menu items
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/b2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
