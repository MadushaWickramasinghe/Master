import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jennings/screens/Animation/FadeAnimation.dart';
import 'package:jennings/screens/Home.dart';
import 'package:jennings/screens/Settings/Settings.dart';
import 'package:jennings/screens/login/signin/signIn.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Home()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Settings()));
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    FadeAnimation(2,Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/profile1.png"),

                            )),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),

              Positioned(child: Column(
                children:<Widget> [
                  FadeAnimation(2,
                  Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "UserName",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                        ),
                      )
                    ),
                  ),


                  FadeAnimation(2,Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Grade",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                        ),
                      )
                    ),
                  ),


                  FadeAnimation(2,Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Total Assignments",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                        ),
                      )
                    ),
                  ),


                  FadeAnimation(2,Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Average Marks",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                        ),
                      )
                    ),
                  ),

                  FadeAnimation(2,
                   Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                      ),
                      child:Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Stars",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                        ),
                      )
                    ),
                  ),

                  FadeAnimation(2,
                    Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
                        ),
                        child:Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Gardian Name",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                          ),
                        )
                    ),
                  ),

                  FadeAnimation(2,
                    Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
                        ),
                        child:Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Contacts",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                          ),
                        )
                    ),
                  ),

                ],
              )),


              SizedBox(
                height: 35,
              ),
              FadeAnimation(2,Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(143, 148, 251, .6),
                        ]
                    )
                ),

                child: Center(
                  child: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                ),


              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        //obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                   /* onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },*/
                 icon: Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
            )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}