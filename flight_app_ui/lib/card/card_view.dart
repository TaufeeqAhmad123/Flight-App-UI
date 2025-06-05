import 'package:flight_app_ui/utils/const.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 1, 41, 74),
                const Color.fromARGB(255, 0, 117, 212),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name', style: KsmallextStyle),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Taufeeq Ahmad',
                      style: KLargeTextStyle.copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon/plan3.png',
                      height: 20,
                      width: 35,
                      color: Colors.white,
                    ),
                    Text(
                      'Pay',
                      style: KsmallextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31),
                Text('Ballance', style: KsmallextStyle),
                SizedBox(height: 10),
                Text(
                  'IDR 280.000.000',
                  style: KLargeTextStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
