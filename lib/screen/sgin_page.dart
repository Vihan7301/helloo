import 'package:flutter/material.dart';
import 'package:helloo/screen/signup_page.dart';

class Signin_Page extends StatefulWidget {
  const Signin_Page({super.key});


  @override
  State<Signin_Page> createState() => _Signin_PageState();
}

class _Signin_PageState extends State<Signin_Page> {

  bool _isPasswordVisible = false;

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
                        Text("Sign in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),),
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
                    Text("Welcome! Back",style: TextStyle(color: Color(0xff29209b),fontSize: 20,fontWeight: FontWeight.w700),),
                    SizedBox(height: 5,),
                    Text("Hello There, sign in to continue!",style: TextStyle(color: Color(0xff29209b),fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 20,),
                    Text("Phone number or email",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 8,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter your Phone number or email',
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
                    SizedBox(height: 10,),
                    Text("Password",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 8,),
                    TextField(
                      obscureText: _isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Enter your password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: Icon(
                            _isPasswordVisible ? Icons.visibility_off : Icons.visibility ,
                          ),
                        ),
                      ),

                      ),
                    SizedBox(height: 10,),
                    Text("Forget Password ?",style: TextStyle(color: Color(0xff29209b),fontSize: 16,fontWeight: FontWeight.w700),),
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
                          onPressed: (){},
                          color: Color(0xff29209b),
                          child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),

                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),
                        SizedBox(width: 5,),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                            },
                            child: Text("Sign Up",style: TextStyle(color: Color(0xff29209b),fontSize: 16,fontWeight: FontWeight.w700),)),


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
