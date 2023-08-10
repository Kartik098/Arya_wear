import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add the Drawer widget here
      // Drawer content goes here
      child: ListView(
        children: [
          DrawerHeader(
            // Header content goes here
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Handle item 1 tap
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
        ],
      ),
    );
  }
}
