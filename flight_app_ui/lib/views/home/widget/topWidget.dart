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

        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text('Taufeeq Ahmad', style: KLargeTextStyle),
          subtitle: Text('Where to fly today?', style: KsmallextStyle),
          trailing: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              'assets/image/profile.jpeg'
              
            ),  
          ),
        ),
      ],
    );
  }
}
