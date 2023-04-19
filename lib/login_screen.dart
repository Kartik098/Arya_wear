import 'package:flutter/material.dart';
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
              top: 200,
              right: 20.0,
              left: 20.0),
          child: Container(
            height: 500.0,
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
                        color: Colors.black54
                      ),
                    ),
                    SizedBox(height: 40,),
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
                    SizedBox(height: 15,),
                    Container(
                      height: 40,
                      width: 280,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(245, 78, 0, 1)
                        ),
                        onPressed: (){},
                        child: Text('Continue',
                        style: TextStyle(
                          color: Colors.white
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
