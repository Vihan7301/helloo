import 'package:flutter/material.dart';
import 'package:helloo/screen/signup_page.dart';

class OTP_page extends StatefulWidget {
  const OTP_page({super.key});

  @override
  State<OTP_page> createState() => _OTP_page();
}

class _OTP_page extends State<OTP_page> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff29209b),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: screenSize.height*0.25,
              width: screenSize.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 50,left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("OTP page",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: screenSize.height*0.75,
              width: screenSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter OTP',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),

                    ),

                    Container(
                        child: MaterialButton(
                            onPressed: (){},
                            child :Text("Resend OTP",style: TextStyle(color: Color(0xff29209b),fontSize: 16,fontWeight: FontWeight.w700),)),
                        ) ,
                    SizedBox(height: 10,),
                    Container(
                      width: screenSize.width,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white)
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          onPressed: (){},
                          color: Color(0xff29209b),
                          child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),

                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
