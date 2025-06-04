import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/views/auth/login.dart';
import 'package:flight_app_ui/widgets/NavBar_screen.dart';
import 'package:flight_app_ui/widgets/navigaion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FadeInDown(
              duration: const Duration(milliseconds: 500),
              from: 50,
              child: Text(
                'Sign Up to\n your account',
                style: GoogleFonts.albertSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  textWidget(text: 'Enter your Name'),
                  SizedBox(height: 10),
                  textField(text :'Enter your name',icon: 'assets/icon/send.png', ),
                  SizedBox(height: 15),
                  textWidget(text:'Enter your Email',),
                  SizedBox(height: 10),
                  textField(text :'Enter your email',icon: 'assets/icon/send.png',),
                  SizedBox(height: 15),
                  textWidget(text:'Enter your password'),
                  SizedBox(height: 10),
                  textField(text :'Confirm your password',icon: 'assets/icon/padlock.png',),
                  SizedBox(height: 15),
                  textWidget(text:'Confirm your password'),
                  SizedBox(height: 10),
                  textField(text :'Enter your password',icon: 'assets/icon/padlock.png',),
                  SizedBox(height: 30),
                  FadeIn(
                    duration: Duration(milliseconds: 500),
                      delay: Duration(milliseconds: 300),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        fixedSize: Size(400, 70),
                      ),
                      onPressed: () {
                      navigateTo(NavbarScreen(), context);
                      },
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.albertSans(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: GoogleFonts.albertSans(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Login Here',
                            style: GoogleFonts.albertSans(
                              fontSize: 16,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                               navigateTo(
                                  const LoginScreen(),
                                  context,
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class textField extends StatelessWidget {
  final String? text;
  final String icon;
  const textField({super.key, this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
   return FadeInDown(
      duration: Duration(milliseconds: 500),
      delay: Duration(milliseconds: 300),
      from: 20,
     child: TextField(
        decoration: InputDecoration(
          hintText: text ?? 'Enter your email',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
          prefixIcon:Image.asset(icon,scale: 20,color: Colors.grey,),
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(15.0),
     
            borderSide: BorderSide(color: Colors.deepPurple, width: 3.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
          ),
        ),
      ),
   );
  }
  }

class textWidget extends StatelessWidget {
  final String? text;
  const textWidget({super.key, this.text});

  @override
  Widget build(BuildContext context) {
return FadeInDown(
      duration: Duration(milliseconds: 500),
      delay: Duration(milliseconds: 300),
      from: 20,
  child: Text(
        text ?? 'Sign Up to\n your account',
        style: GoogleFonts.albertSans(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
);
  }
}