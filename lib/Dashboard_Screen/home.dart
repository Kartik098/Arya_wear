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
   appBar: AppBar(
     elevation: 0,
     backgroundColor: Color.fromRGBO(36, 47, 67, 1),
     automaticallyImplyLeading: false,
     title: Container(
       child: Text("Add To Cart",
         style: TextStyle(
           fontFamily: 'Rubik',
           color: Colors.white,
           fontWeight: FontWeight.bold
         ),),
     ),
     actions: <Widget>[
       Container(
         child: Row(
           children: [
             IconButton(onPressed: (){},
                 icon: Icon(Icons.shopping_cart,color: Colors.white,)
             )
           ],
         ),
       ),
     ]
   ),
       body: Column(
         children: [
           ListView(
             scrollDirection: Axis.horizontal,
             children: <Widget>[
               Image.asset('assets/google.png'),
               Image.asset('assets/facebook.png'),
               Image.asset('assets/google.png'),
               Image.asset('assets/facebook.png'),
             ],
           )

         ],
       ),
    );
  }
}
