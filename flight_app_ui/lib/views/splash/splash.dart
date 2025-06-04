import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/views/auth/signup.dart';
import 'package:flight_app_ui/views/home/home.dart';
import 'package:flight_app_ui/widgets/backgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;
  late AnimationController _movingController;
  late Animation<Offset> _movingAnimation;
  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _rotationAnimation = Tween<double>(begin: 0.0, end: -45 * pi / 180).animate(
      CurvedAnimation(parent: _rotationController, curve: Curves.easeInOut),
    );
    _movingController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _movingAnimation = Tween<Offset>(begin: Offset.zero, end: Offset(5, -6))
        .animate(
          CurvedAnimation(parent: _movingController, curve: Curves.easeInOut),
        );
    startAnimation();
  }

  void startAnimation() async {
    Future.delayed(Duration(seconds: 3)).then((_) {
      _rotationController.forward().then((_) {
        Future.delayed(const Duration(seconds: 1)).then((_) async {
          await _movingController.forward();
          Navigator.pushReplacement(
            context,
            CupertinoPageRoute(builder: (_) => const SignupScreen()),
          );
        });
      });
    });
  }
  @override
  void dispose() {
    _rotationController.dispose();
    _movingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Backgroundimage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          FadeOut(
            animate: true,
            delay: const Duration(seconds: 5),
            duration: const Duration(seconds: 1),
            child: Text(
              "Transfelry",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            const SizedBox(height: 120), 
          AnimatedBuilder(
            animation: Listenable.merge([
              _rotationController,
              _movingController,
            ]),
            builder: (context, child) {
              return Transform.rotate(
                angle: _rotationAnimation.value,
                child: FractionalTranslation(
                  translation: _movingAnimation.value,
                  child: child,
                ),
              );
            },
            child: Image.asset(
              'assets/icon/plan2.png',
              width: double.infinity,
              height:400,
              
            ),
          ),
        ],
      ),
    );
  }
}
