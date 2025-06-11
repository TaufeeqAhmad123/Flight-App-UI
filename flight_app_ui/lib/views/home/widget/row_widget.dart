import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/utils/const.dart';
import 'package:flutter/material.dart';

class rowWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const rowWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeInLeft(child: Text(title, style: KLargeTextStyle)),
        Spacer(),
        FadeInRight(
          child: Text(
            subtitle,
            style: KMediumTextStyle.copyWith(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
