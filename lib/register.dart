import 'package:flutter/material.dart';
class register_Screen extends StatefulWidget {
  const register_Screen({Key? key}) : super(key: key);

  @override
  State<register_Screen> createState() => _register_ScreenState();
}

class _register_ScreenState extends State<register_Screen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // The containers in the background
        Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * .45,
                color: Color.fromRGBO(36, 47, 67, 1)
            ),
            Container(
              height: MediaQuery.of(context).size.height * .55,
              color: Colors.white,
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
              top: 150,
              right: 20.0,
              left: 20.0),
          child: Container(
            height: 550.0,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.white,
              elevation: 4.0,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("REGISTER",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 35,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Name",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              color: Colors.black54
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Mobile Number",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              color: Colors.black54
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Email",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              color: Colors.black54
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Password",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              color: Colors.black54
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Confirm Password",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              color: Colors.black54
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                        height: 40,
                        width: 280,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:Color.fromRGBO(245, 78, 0, 1)
                          ),
                          onPressed: (){

                          },
                          child: Text('Register',
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 20
                            ),),
                        )
                    ),


                  ],
                ),
              ),
            ),

          ),
        ),

      ],
    );
  }
}
