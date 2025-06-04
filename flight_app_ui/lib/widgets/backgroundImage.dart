import 'package:flutter/material.dart';

class Backgroundimage extends StatelessWidget {
  final Widget child;
  const Backgroundimage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(height: 100),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/image/building1.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 700,
                   
                  ),
                ),
              ),
              Positioned.fill(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
