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
               )
               ,
             )
           ],
         ),
       ),
    );
  }
}
