import 'package:flight_app_ui/utils/const.dart';
import 'package:flutter/material.dart';

class topWidget extends StatelessWidget {
  const topWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome', style: KLargeTextStyle),
       
        Row(
          children: [
            Text('Taufeeq Ahmad', style: KLargeTextStyle),
            Spacer(),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ],
        ),
        Text('Where to fly today?', style: KsmallextStyle),
      ],
    );
  }
}
