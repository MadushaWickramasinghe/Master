import 'package:flutter/material.dart';
import 'file:///C:/MyFiles/Projects/jennings/lib/screens/login/signin/signIn.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    new Future.delayed(
      const Duration(seconds: 6),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()))
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 600,
                width: 800,
                child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_K7aZUG.json"),
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 100,
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                    'Hey There',
                    textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                  ScaleAnimatedText(
                    'Lets Start',
                    textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
