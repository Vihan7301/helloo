import 'package:flutter/material.dart';
import 'package:helloo/screen/sgin_page.dart';
import 'package:helloo/screen/signup_page.dart';
import 'package:lottie/lottie.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({super.key});

  @override
  State<welcome_page> createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
       children: [
         Container(
           height: screenSize.height*0.5,
           width: screenSize.width,
            child: Lottie.asset("assets/images/welcome_animation.json")) ,
         Center(
           child: Container(
             height: screenSize.height*0.5,
             width: screenSize.width,
             decoration: BoxDecoration(
               color: Color(0xff29209b),
               borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
             ),
             child: Padding(
               padding: const EdgeInsets.all(20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Text("Welcome",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                       SizedBox(width: 10,),
                       Icon(Icons.waving_hand,color: Colors.yellow,size: 20,)
                     ],
                   ),
                   SizedBox(
                     height: screenSize.height*0.02,
                   ),
                   Text("Just on a click ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
                   SizedBox(
                     height: 5,
                   ),
                   Text("Connets you to the world ! ",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                   SizedBox(
                     height: screenSize.height*0.03,
                   ),
                   Container(
                     width: screenSize.width,
                     height: 40,
                     color: Colors.transparent,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: MaterialButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin_Page()));
                           },
                         color: Colors.white,
                         child: Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500)),

                       ),
                     ),
                   ),
                   SizedBox(
                     height: screenSize.height*0.02,
                   ),
                   Container(
                     width: screenSize.width,
                     height: 40,
                     decoration: BoxDecoration(
                       color: Colors.transparent,
                         borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.white)
                     ),

                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: MaterialButton(
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));

                         },
                         color: Color(0xff29209b),
                         child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),

                       ),
                     ),
                   ),
                   SizedBox(
                     height: screenSize.height*0.02,
                   ),
                   Row(
                       children: [
                     Expanded(
                         child: Divider(

                           color: Colors.white,
                         )),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(
                         "Or",
                         style: TextStyle(color: Colors.white),
                       ),
                     ),
                     Expanded(
                         child: Divider(
                           color: Colors.white,
                         )),
                   ]),
                   SizedBox(
                     height: screenSize.height*0.02,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Container(
                         width: screenSize.width*0.4,
                         height: 50,
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: Colors.white)
                         ),

                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                           child: MaterialButton(
                             onPressed: (){},

                             child: Image.asset("assets/images/google-logo.jpg",fit: BoxFit.fill,),

                           ),
                         ),
                       ),
                       Container(
                         width: screenSize.width*0.4,
                         height: 50,
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: Colors.white)
                         ),

                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                           child: MaterialButton(
                             onPressed: (){},

                             child: Image.asset("assets/images/appleLogo.png",fit: BoxFit.fill,),

                           ),
                         ),
                       ),

                     ],
                   ),



                 ],
               ),
             ),
           ),
         ),
       ],
      )
    );
  }
}
