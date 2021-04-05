import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:jennings/screens/Animation/FadeAnimation.dart';
import 'package:jennings/screens/Profile/Profile.dart';
import 'package:jennings/screens/Slider/slider.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 400,
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
                child: FadeAnimation (1,
                    Container(
                          height: 200,
                          width: 100,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20,left: 0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage("https://icons8.com/icons/set/user"),
                        ),
                      ),
                   ),
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
                child: FadeAnimation(1.5,
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 190,left: 25,right: 25),
                        child: SizedBox(
                            height: 200.0,
                            width: 350.0,
                            child: Carousel(
                              images: [
                                NetworkImage('https://bloximages.chicago2.vip.townnews.com/thetimestribune.com/content/tncms/assets/v3/editorial/2/ed/2edbebde-ec11-11ea-9a29-17cf173ad57d/5f4dd76e4af8c.image.jpg?resize=750%2C500'),
                                NetworkImage('https://i1.wp.com/stmarysps.org/wp-content/uploads/2020/08/Back-to-School.jpg'),
                               // ExactAssetImage("assets/images/pic1.jpg")

                              ],
                              dotSize: 4.0,
                              dotSpacing: 15.0,
                              dotColor: Colors.lightGreenAccent,
                              indicatorBgPadding: 5.0,
                              dotBgColor: Colors.purple.withOpacity(0.5),
                              borderRadius: true,
                            )
                        ),
                      ),

                )
                ),
              ),

              Positioned(
                child: FadeAnimation(1.6,
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 95,left: 120),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Profile()),
                              );
                            },
                            child: Text("UserName", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    )),
              ),




              Positioned(
                child: FadeAnimation(1.6,
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      child: Center(
                        //child: Text("Welcome To Jennings", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      ),
                    )),
              )
            ],
          ),
        ),

      ),

    );
  }
}
