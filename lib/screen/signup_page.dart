import 'package:flutter/material.dart';
import 'package:helloo/screen/sgin_page.dart';
import 'package:helloo/screen/OTP_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isPasswordVisible = false;

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff29209b),
      body: SingleChildScrollView(
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
                        Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),),
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
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome !",style: TextStyle(color: Color(0xff29209b),fontSize: 20,fontWeight: FontWeight.w700),),
                    SizedBox(height: 5,),
                    Text("Hello There, sign up to continue!",style: TextStyle(color: Color(0xff29209b),fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 20,),
                    Text("Phone Number ",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 8,),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: phone,
                        decoration: InputDecoration(
                          labelText: 'Enter your Phone number ',
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
                    ),



                    SizedBox(height: 20,),
                    Container(
                      width: screenSize.width,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OTP_page()),
                            );
                            },
                          color: Color(0xff29209b),
                          child: Text("Get OTP",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),

                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Have an account?",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),
                        SizedBox(width: 5,),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin_Page()));

                            },
                            child: Text("Sign In",style: TextStyle(color: Color(0xff29209b),fontSize: 16,fontWeight: FontWeight.w700),)),


                      ],
                    )
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
