import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/views/auth/signup.dart';
import 'package:flight_app_ui/widgets/navigaion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 60),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FadeInDown(
              duration: const Duration(milliseconds: 500),
              from: 50,
              child: Text(
                'Login to\n your account',
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
                  textWidget(text: 'Enter your Email'),
                  SizedBox(height: 10),
                  textField(
                    text: 'Enter your email',
                    icon: 'assets/icon/send.png',
                  ),
                  SizedBox(height: 15),
                  textWidget(text: 'Enter your password'),
                  SizedBox(height: 10),
                  textField(
                    text: 'Enter your password',
                    icon: 'assets/icon/padlock.png',
                  ),

                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.albertSans(
                        fontSize: 16,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fixedSize: Size(400, 70),
                    ),
                    onPressed: () {
                      // Handle sign up logic
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.albertSans(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
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
                            text: 'Signup Here',
                            style: GoogleFonts.albertSans(
                              fontSize: 16,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                navigateTo(const SignupScreen(), context);
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
