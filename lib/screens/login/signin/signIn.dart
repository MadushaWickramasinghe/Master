import 'package:flutter/material.dart';
import 'package:jennings/screens/Animation/FadeAnimation.dart';
import 'package:jennings/screens/Home.dart';
import 'package:jennings/screens/login/Login/register.dart';
import 'package:jennings/screens/navBar/navbar.dart';
import 'package:simple_animations/simple_animations.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
         child: Column(
           children:<Widget> [
             Container(
               height: 380,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('assets/background.png'),
                   fit: BoxFit.fill
                 )
               ),
               child: Stack(
                 children:<Widget> [
                   Positioned(
                     left: 30,
                     width: 80,
                     height: 200,
                     child: FadeAnimation (1,Container(
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage('assets/light-1.png')
                         )
                       ),

                     )
                     ),
                   ),
                   Positioned(
                     right: 40,
                     top: 40,
                     width: 80,
                     height: 150,
                     child: FadeAnimation(1.5, Container(
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage('assets/light-2.png')
                           )
                       ),
                     )),
                   ),


                   Positioned(
                     child: FadeAnimation(1.6,Container(
                       margin: EdgeInsets.only(top: 50),
                       child: Center(
                         child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                       ),
                     )),
                   )
                 ],
               ),
             ),

             Padding(
               padding: EdgeInsets.symmetric(vertical:0, horizontal: 60),
               child: Column(
                 children:<Widget> [
                   FadeAnimation(1.8, Container(
                     padding: EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                         color: Color.fromRGBO(143, 148, 251, 2),
                           blurRadius: 20.0,
                           offset: Offset(0, 10)

                       )
                     ]

                   ),
                     child: Column(
                       children:<Widget> [
                         Container(
                           padding: EdgeInsets.all(8.0),
                           decoration: BoxDecoration(
                               border: Border(bottom: BorderSide(color: Colors.grey[100]))
                           ),
                             child: TextField(
                                 decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: "UserName",
                                     hintStyle: TextStyle(color: Colors.grey[400])
                                 ),
                             ),
                         ),

                         Container(
                           padding: EdgeInsets.all(8.0),
                           child: TextField(
                             decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: "Password",
                                 hintStyle: TextStyle(color: Colors.grey[400])
                             ),
                           )


                         ),
                       ],
                     ),
                   )),

                   SizedBox(height: 30,),
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

                     child: ElevatedButton(
                       onPressed: (){
                         Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context)=> Home())
                         );
                       },


                       child: Center(
                         child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                       ),
                     ),


                   )),
                   SizedBox(height: 10,),

                   Row(
                     children:<Widget> [
                       Expanded(child: Divider(
                         thickness: 3,
                       )
                       ),

                       Text("OR"),
                       Expanded(child: Divider(
                         thickness: 5,
                       )
                       ),
                     ],
                   ),

                   SizedBox(height: 20,),
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

                     child: ElevatedButton(
                       onPressed: (){
                         Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => Register()),
                         );
                       },
                       child: Center(
                         child: Text("SignIn", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),



                       ),
                     ),
                   )),





                   SizedBox(height: 10,),
                   FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                 ],
               ),
             )
           ],
         ),
        ),
      ),


    );
  }
}
