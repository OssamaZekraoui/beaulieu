import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image
              Image.asset(
                "assets/images/logo.png",
                height: 170,
              ),
              SizedBox(height: 20,),
              //Title
              Text(
                "SIGN IN",
                style: GoogleFonts.robotoCondensed(
                    fontSize: 37,
                  fontWeight: FontWeight.bold
                ),
              ),
              //Subtitle
              Text(
                "Welcome back! Nice to see you again :-)",
                style: GoogleFonts.robotoCondensed(
                    fontSize: 19,
                ),
              ),

              SizedBox(height: 50,),

              //Email Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child :Container(
                  decoration:  BoxDecoration(
                      color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email'
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              //Password Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child :Container(
                  decoration:  BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password'
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              // sign in button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text(
                        "Sign in",
                      style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              // Text : sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not yet a member? ',
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Sign up now',
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue
                    ),
                  ),
                ],
              ),
            ],
          ),
        )


      ),
    );
  }
}
