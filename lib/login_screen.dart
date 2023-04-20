import 'package:AryaWear/register.dart';

import 'package:flutter/material.dart';

import 'Dashboard_Screen/dashboard.dart';
class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
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
              top: 170,
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
                    Text("LOGIN / REGISTER",
                      style: TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 40,),
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
                    SizedBox(height: 15,),
                    Container(
                      height: 40,
                      width: 280,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(245, 78, 0, 1)
                        ),
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context)
                          =>dashbord()));
                        },
                        child: Text('Login',
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      )
                    ),
                    SizedBox(height: 20,),
                    Row(children: const [
                      Expanded(child: Divider(thickness: 1.5)),
                      Text("or", style: TextStyle(fontSize: 20, color: Colors
                          .grey)),
                      Expanded(child: Divider(thickness: 1.5)),
                    ]),
                    SizedBox(height: 35,),
                    Container(
                        height: 40,
                        width: 280,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:Colors.white,
                            elevation: 1
                          ),
                          onPressed: (){},
                          child: Row(
                            children: [
                              SizedBox(width: 55,),
                              SizedBox(
                                height: 15,
                                width: 15,
                                child:
                                Image.asset('assets/google.png',),
                              ),
                              SizedBox(width: 10,),
                              Text('Login with Google',
                                style: TextStyle(
                                    color: Colors.cyan
                                ),),
                            ],
                          ),
                        )
                    ),
                    SizedBox(height: 20,),
                    Container(
                        height: 40,
                        width: 280,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:Colors.white,
                              elevation: 1
                          ),
                          onPressed: (){},
                          child: Row(
                            children: [
                              SizedBox(width: 55,),
                              SizedBox(
                                height: 15,
                                width: 15,
                                child:
                                Image.asset('assets/facebook.png',),
                              ),
                              SizedBox(width: 10,),
                              Text('Login with Facebook',
                                style: TextStyle(
                                    color: Colors.cyan
                                ),),
                            ],
                          ),
                        )
                    ),
                    SizedBox(height: 35,),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        Text("Don't have an account?",
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 12
                          ),
                        ),
                        SizedBox(width: 2,),
                        InkWell(
                          child: Text("Register here",
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15,
                              color: Colors.cyan
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context)
                            =>register_Screen()));
                          },
                        )
                      ],
                    )


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
