
import 'package:AryaWear/Dashboard_Screen/profile.dart';
import 'package:AryaWear/Dashboard_Screen/search.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'brands.dart';
import 'catagory.dart';
import 'home.dart';
// class dashbord extends StatefulWidget {
//   const dashbord({Key? key, }) : super(key: key);
//
//   @override
//   State<dashbord> createState() => _dashbordState();
// }
//
// class _dashbordState extends State<dashbord> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     home();
//   }
//
//   int currentIndex = 0;
//   final screens = [
//     home(),
//     catagory(),
//     search(),
//     brands(),
//     profile(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[currentIndex],
//       bottomNavigationBar: Container(
//         height: 55,
//         child: BottomNavigationBar(
//           currentIndex: currentIndex,
//           onTap: (index)=> setState(() =>currentIndex = index),
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.black,
//           unselectedItemColor: const Color.fromRGBO(156, 156, 156, 1),
//           selectedIconTheme:   IconThemeData (
//             color: Colors.black,
//           ),
//           items: const [
//             BottomNavigationBarItem(
//               icon:Icon(Icons.home,),
//               label:"home",
//             ),
//             BottomNavigationBarItem(
//               icon:Icon(Icons.category,),
//               label: "Category",
//             ),
//             BottomNavigationBarItem(
//               icon:Icon(Icons.search_outlined,),
//               label: ""
//             ),
//             BottomNavigationBarItem(
//               icon:Icon(Icons.grid_view_rounded),
//               label: "Brands",
//             ),
//             BottomNavigationBarItem(
//               icon:Icon(Icons.person,),
//               label: "Profile",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class dashbord extends StatefulWidget {
  @override
  _dashbordState createState() => _dashbordState();
}

class _dashbordState extends State<dashbord> {
 int currentIndex = 0;
  final screens = [
    home(),
    catagory(),
    search(),
    brands(),
    profile(),
  ];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30,color: Color.fromRGBO(36, 47, 67, 1),),
            Icon(Icons.category_rounded, size: 30,color: Color.fromRGBO(36, 47, 67, 1),),
            Icon(Icons.search_outlined, size: 30,color: Color.fromRGBO(36, 47, 67, 1),),
            Icon(Icons.grid_view_rounded, size: 30,color: Color.fromRGBO(36, 47, 67, 1),),
            Icon(Icons.person, size: 30,color: Color.fromRGBO(36, 47, 67, 1),),
          ],
          color: Colors.grey.shade100,
          buttonBackgroundColor: Colors.grey.shade100,
          backgroundColor: Colors.white,
          animationCurve: Curves.linear,
          animationDuration: Duration(microseconds: 6000),
          onTap: (index)=> setState(() =>currentIndex = index),
          letIndexChange: (index) => true,
        ),
         body: screens[currentIndex]
    );
  }
}