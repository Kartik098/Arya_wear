import 'package:AryaWear/GlobalDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle; // Add this field

  GlobalAppBar({required this.pageTitle});
  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(36, 47, 67, 1),
        automaticallyImplyLeading: false,
        title: Container(
          child: Text(
            pageTitle,
            style: TextStyle(
              fontFamily: 'Rubik',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Open the drawer when the icon is tapped
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      drawer: MyDrawer()
    );
  }
}
