import 'package:flutter/material.dart';
import 'package:jennings/screens/Animation/FadeAnimation.dart';
import 'package:jennings/screens/Home.dart';
import 'package:jennings/screens/Settings/pages/aboutJennings.dart';
import 'package:jennings/screens/Settings/pages/aboutUs.dart';
import 'package:jennings/screens/Settings/pages/contacts.dart';
import 'package:jennings/screens/Settings/pages/license.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60),
      child: Scaffold(
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
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "Settings",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),


                Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Column(
                          children:<Widget> [
                            FadeAnimation(2,
                              Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Theme",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                                    ),
                                  )
                              ),
                            ),

                            SizedBox(height: 20),


                            FadeAnimation(2,Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => AboutUs())
                                      );
                                    },
                                    child: Text(
                                      "About Us",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                                    ),
                                  ),
                                )
                            ),
                            ),

                            SizedBox(height: 20),


                            FadeAnimation(2,Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => AboutJennings())
                                      );
                                    },
                                    child: Text(
                                      "About Jennings",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                                    ),
                                  ),
                                )
                            ),
                            ),

                            SizedBox(height: 20),


                            FadeAnimation(2,Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => License())
                                      );
                                    },
                                    child: Text(
                                      "License",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                                    ),
                                  ),
                                )
                            ),
                            ),

                            SizedBox(height: 20),


                            FadeAnimation(2,
                              Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                  ),
                                  child:Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                          MaterialPageRoute(builder: (context) => Contacts())
                                        );
                                      },
                                      child: Text(
                                        "Contacts",style: TextStyle(color: Colors.grey[400],fontSize: 20),
                                      ),
                                    ),
                                  )
                              ),
                            ),

                  ],
                ),
                    )),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
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


