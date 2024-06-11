import 'package:flutter/material.dart';
import 'package:helloo/screen/welcome_page.dart';
import 'package:lottie/lottie.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {



  @override
  getstarted()async{
    await Future.delayed(Duration(seconds: 6),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>welcome_page()));

    });
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    getstarted();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff29209b),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.white,
          child: Lottie.asset("assets/images/building_animation.json"),
        ),
        // child: Container(
        //   width: screenSize.width*0.5,
        //   height: screenSize.height*0.5,
        //   decoration: BoxDecoration(
        //     b
        //   ),
        //   child:  Lottie.asset("assets/images/welcome_animation.json")) ,
        ),


    );
  }
}